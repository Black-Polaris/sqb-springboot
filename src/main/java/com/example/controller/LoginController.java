package com.example.controller;

import com.example.result.Result;
import com.example.result.ResultCode;
import com.example.result.ResultFactory;
import com.example.service.impl.UserServiceImpl;
import com.example.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.subject.Subject;
import org.reactivestreams.Subscription;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.HtmlUtils;
import javax.servlet.http.HttpSession;
import java.sql.ResultSet;
import java.util.function.Supplier;

/**
 * @author sqb
 * 登录验证并返回响应码
 */
@RestController
public class LoginController {
    @Autowired
    UserServiceImpl userServiceImpl;

    @CrossOrigin
    @RequestMapping("api/login")
    public Result login(@RequestBody User requestUser){
        String username = requestUser.getUsername();
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(username, requestUser.getPassword());
        try{
            subject.login(usernamePasswordToken);
            return ResultFactory.buildSuccessResult(username);
        }catch (AuthenticationException e){
            String message = "账号密码错误";
            return ResultFactory.buildFailResult(message);
        }
    }

    @CrossOrigin
    @PostMapping("api/register")
    @ResponseBody
    public Result register(@RequestBody User user){
        String username = user.getUsername();
        String password = user.getPassword();
        //HtmlUtils.htmlEscape把HTML编码转义
        username = HtmlUtils.htmlEscape(username);
        user.setUsername(username);
        System.out.println("后端注册测试");
        boolean exist = userServiceImpl.isExist(username);
        if(exist){
            String message = "“用户名已被使用，请重新输入”";
            return ResultFactory.buildFailResult(message);
        }

        //生成盐，默认长度为16
        String salt = new SecureRandomNumberGenerator().nextBytes().toString();
        //设置hash算法迭代次数
        int times = 2;
        //得到hash后的密码
        String encodedPassword = new SimpleHash("md5",password,salt,times).toString();
        //存储用户信息，包括salt与hash后的密码
        user.setSalt(salt);
        user.setPassword(encodedPassword);
        userServiceImpl.add(user);

        return ResultFactory.buildSuccessResult(user);
    }

    @CrossOrigin
    @ResponseBody
    @GetMapping("api/logout")
    public Result logout(){
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        String message = "成功退出";
        return ResultFactory.buildSuccessResult(message);
    }

}
