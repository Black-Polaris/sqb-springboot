package com.example.service.impl;

import com.example.entity.User;
import com.example.mapper.UserMapper;
import com.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author sqb
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public boolean isExist(String username){
        User user = getByName(username);
        return null!=user;
    }

    @Override
    public User getByName(String username) {
        return userMapper.findByUsername(username);
    }

    @Override
    public User get(String username, String password){
        return userMapper.getByUsernameAndPassword(username,password);
    }

    @Override
    public void add(User user){
        userMapper.save(user);
    }


}
