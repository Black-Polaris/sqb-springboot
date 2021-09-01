# sqb-springboot 
## 基于SpringBoot+vue的前后端分离书架以及Blog博客网站的*后端部分* 
[前端代码跳转链接](https://github.com/Black-Polaris/sqb-vue)  [https://github.com/Black-Polaris/sqb-vue](https://github.com/Black-Polaris/sqb-vue)

## 系统主要实现了如下功能
  * 使用Shiro实现用户信息加密与登录认证
  * 通过Element-ui来进行前端开发，实现前端页面导航栏与书架页面以及博客功能
  * 通过调用后端接口来完成前端请求与处理，并实现前后端分离
  
### 采用加盐加密
  通过加盐对hash算法安全性进行提高，本质就是在密码后面加入一段随机字符串，然后再进行hash，整体基本逻辑流程如下：
  * 用户注册时，输入用户名密码，向后台发送请求
  * 后台将密码加上随机生成的盐并hash，再将hash后的值作为密码存入数据库，同时也将盐作为字段保存起来
  * 当用户进行登录时，输入用户名密码，向后台发送请求
  * 后台根据用户名查询出盐，并与密码组合并hash，将得到的值与数据库中存储的密码进行比对，若一致则通过验证

## 具体操作实现图
  * 登录页面  
   ![Image](https://raw.githubusercontent.com/Black-Polaris/Image/main/s1.png)
   
  * 注册页面  
   ![Image](https://raw.githubusercontent.com/Black-Polaris/Image/main/s2.png)
   
  * 进入书架页面  
   ![Image](https://raw.githubusercontent.com/Black-Polaris/Image/main/s3.png)
   
  * 鼠标移动到书籍上会显示该书籍的基本信息  
   ![Image](https://raw.githubusercontent.com/Black-Polaris/Image/main/s4.png)
   
  * 点击书籍图片弹出对书籍信息进行修改表单  
   ![Image](https://raw.githubusercontent.com/Black-Polaris/Image/main/s5.png)
   
  * 点击书架页面中大大的加*+*号进入添加信息表单，包括对图片进行上传  
   ![Image](https://raw.githubusercontent.com/Black-Polaris/Image/main/s6.png)
   
  * 在书架上方的输入框中可以实现通过*作者名或者书名*进行模糊搜索  
   ![Image](https://raw.githubusercontent.com/Black-Polaris/Image/main/s7.png)
   
  * 点击侧边栏可以对书籍进行分类显示  
   ![Image](https://raw.githubusercontent.com/Black-Polaris/Image/main/s8.png)
   
  * 点击个人博客模块 显示个人Blog信息  
   ![Image](https://raw.githubusercontent.com/Black-Polaris/Image/main/s9.png)
   
  * 点击上方*添加博客*按钮进入Blog编辑页面  
   ![Image](https://raw.githubusercontent.com/Black-Polaris/Image/main/s10.png)
   
  * 点击博客列表中的某一个博客，可以进入到博客的详细内容显示  
   ![Image](https://raw.githubusercontent.com/Black-Polaris/Image/main/s11.png)
   
