/*
 Navicat Premium Data Transfer

 Source Server         : sqb
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : vs

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 07/11/2021 21:54:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `article_content_md` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `article_content_html` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `article_abstract` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `article_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES (26, '基于SprignBoot+Vue 前后端分离的 书架以及Blog网站', '## SpringBoot\n该次系统的Java后台用到的技术主要是 ***Spring Boot***框架技术，Spring Boot 可以 说是现在一种成熟的Java框架了，对于使用过Spring MVC的人来讲最让人头疼的事情莫过于就是大量的配置文件，稍有不慎便会导致配置错误。Spring Boot的出现就大大的简化这一个过程。该项技术通过在.properties或者.yaml全局配置文件中直接配置经由框架简化过的配置信息就可以完成配置，这一过程的原理则是自动配置，自动装配则是根据Spring Boot框架自带的注解类得以实现，将这一过程凝缩成一句话那便是约定大于配置。\n\n## Shiro\n***Apache Shiro***是一个强大且易用的Java安全框架,执行身份验证、授权、密码和会话管理。使用Shiro的易于理解的API,您可以快速、轻松地获得任何应用程序,从最小的移动应用程序到最大的网络和企业应用程序。Shiro具有三个核心组件：Subject, SecurityManager 和 Realms.\n　　**Subject**：即“当前操作用户”Subject代表了当前用户的安全操作，SecurityManager则管理所有用户的安全操作。\n　　**SecurityManager**：它是Shiro框架的核心，典型的Facade模式，Shiro通过SecurityManager来管理内部组件实例，并通过它来提供安全管理的各种服务。\n　　**Realm**：Realm充当了Shiro与应用安全数据间的“桥梁”或者“连接器”。也就是说，当对用户执行认证（登录）和授权（访问控制）验证时，Shiro会从应用配置的Realm中查找用户及其权限信息。\n\n## Vue\n***Vue***框架的核心是Model-View-ViewModel，Model指的是后台所接收的数据，View则是展现给用户的界面，ViewModel则是将Model与View联系起来，使两者之间能有着动态的联系。Vue还有一个特别方便的地方是双向数据绑定，我们可以简单的操作DOM，不用像使用jQuery那样为了改变某一个标签的内容而进行一长串的字符串拼接操作。', '<h2><a id=\"SpringBoot_0\"></a>SpringBoot</h2>\n<p>该次系统的Java后台用到的技术主要是 <em><strong>Spring Boot</strong></em>框架技术，Spring Boot 可以 说是现在一种成熟的Java框架了，对于使用过Spring MVC的人来讲最让人头疼的事情莫过于就是大量的配置文件，稍有不慎便会导致配置错误。Spring Boot的出现就大大的简化这一个过程。该项技术通过在.properties或者.yaml全局配置文件中直接配置经由框架简化过的配置信息就可以完成配置，这一过程的原理则是自动配置，自动装配则是根据Spring Boot框架自带的注解类得以实现，将这一过程凝缩成一句话那便是约定大于配置。</p>\n<h2><a id=\"Shiro_3\"></a>Shiro</h2>\n<p><em><strong>Apache Shiro</strong></em>是一个强大且易用的Java安全框架,执行身份验证、授权、密码和会话管理。使用Shiro的易于理解的API,您可以快速、轻松地获得任何应用程序,从最小的移动应用程序到最大的网络和企业应用程序。Shiro具有三个核心组件：Subject, SecurityManager 和 Realms.<br />\n　　<strong>Subject</strong>：即“当前操作用户”Subject代表了当前用户的安全操作，SecurityManager则管理所有用户的安全操作。<br />\n　　<strong>SecurityManager</strong>：它是Shiro框架的核心，典型的Facade模式，Shiro通过SecurityManager来管理内部组件实例，并通过它来提供安全管理的各种服务。<br />\n　　<strong>Realm</strong>：Realm充当了Shiro与应用安全数据间的“桥梁”或者“连接器”。也就是说，当对用户执行认证（登录）和授权（访问控制）验证时，Shiro会从应用配置的Realm中查找用户及其权限信息。</p>\n<h2><a id=\"Vue_9\"></a>Vue</h2>\n<p><em><strong>Vue</strong></em>框架的核心是Model-View-ViewModel，Model指的是后台所接收的数据，View则是展现给用户的界面，ViewModel则是将Model与View联系起来，使两者之间能有着动态的联系。Vue还有一个特别方便的地方是双向数据绑定，我们可以简单的操作DOM，不用像使用jQuery那样为了改变某一个标签的内容而进行一长串的字符串拼接操作。</p>\n', '应用技术：SpringBoot、mybatis、Shiro、Vue、Element-ui、Axios', '2021-09-01');
INSERT INTO `blog` VALUES (27, 'MVC', '**View（视图）**：视图代表模型包含的数据的可视化。是用户看到并与之交互的界面（它可以包括一些可以显示数据信息的页面，或者展示形式。例如jsp，html，asp，php）\n**Model（模型）**：\n1. 模型是企业数据和业务规则（可以说就是后端接口，用于业务处理）。在MVC的三个部件中，模型拥有最多的处理任务。\n2. 被模型返回的数据是中立的，就是说模型与数据格式无关，这样一个模型能为多个视图提供数据。（接口）\n3. 由于应用于模型的代码只需写一次就可以被多个视图重用，所以减少了代码的重复性。\n\n**Controller**（控制器）：\n1. 控制器接受用户的输入并调用模型和视图去完成用户的需求（接受客户发送的请求，根据请求调用所对应的接口，然后模型业务处理后返回的数据，由控制器决定调用那个View展示）。\n2. 所以当单击Web页面中的超链接和发送HTML表单时，控制器本身不输出任何东西和做任何处理。它只是接收请求并决定调用哪个模型构件去处理请求，然后用确定用哪个视图来显示模型处理返回的数据。\n\n***MVC的处理过程：***\n1. 首先控制器接收用户的请求，并决定应该调用哪个模型来进行处理\n2. 然后模型用业务逻辑来处理用户的请求并返回数据\n3. 最后控制器用相应的视图格式化模型返回的数据，并通过表示层呈现给用户。', '<p><strong>View（视图）</strong>：视图代表模型包含的数据的可视化。是用户看到并与之交互的界面（它可以包括一些可以显示数据信息的页面，或者展示形式。例如jsp，html，asp，php）<br />\n<strong>Model（模型）</strong>：</p>\n<ol>\n<li>模型是企业数据和业务规则（可以说就是后端接口，用于业务处理）。在MVC的三个部件中，模型拥有最多的处理任务。</li>\n<li>被模型返回的数据是中立的，就是说模型与数据格式无关，这样一个模型能为多个视图提供数据。（接口）</li>\n<li>由于应用于模型的代码只需写一次就可以被多个视图重用，所以减少了代码的重复性。</li>\n</ol>\n<p><strong>Controller</strong>（控制器）：</p>\n<ol>\n<li>控制器接受用户的输入并调用模型和视图去完成用户的需求（接受客户发送的请求，根据请求调用所对应的接口，然后模型业务处理后返回的数据，由控制器决定调用那个View展示）。</li>\n<li>所以当单击Web页面中的超链接和发送HTML表单时，控制器本身不输出任何东西和做任何处理。它只是接收请求并决定调用哪个模型构件去处理请求，然后用确定用哪个视图来显示模型处理返回的数据。</li>\n</ol>\n<p><em><strong>MVC的处理过程：</strong></em></p>\n<ol>\n<li>首先控制器接收用户的请求，并决定应该调用哪个模型来进行处理</li>\n<li>然后模型用业务逻辑来处理用户的请求并返回数据</li>\n<li>最后控制器用相应的视图格式化模型返回的数据，并通过表示层呈现给用户。</li>\n</ol>\n', '模式代表 Model-View-Controller（模型-视图-控制器） 模式。这种模式用于应用程序的分层开发。', '2021-09-01');
INSERT INTO `blog` VALUES (28, 'springboot的结构：', '**业务逻辑**\n*Controller–>service接口–>serviceImpl–>dao接口–>daoImpl–>mapper–>database*\n\n***Dao(Data Access Object)***:数据存储对象\ndao层即数据持久层，也被称为mapper层。\n不管是什么框架，我们很多时候都会与数据库进行交互。如果遇到一个场景我们都要去写SQL语句，那么我们的代码就会很冗余。所以，我们就想到了把数据库封装一下，让我们的数据库的交道看起来像和一个对象打交道，这个对象通常就是DAO。当我们操作这个对象的时候，这个对象会自动产生SQL语句来和数据库进行交互，我们就只需要使用DAO就行了。\n通常我们**在DAO层里面写接口，里面有与数据打交道的方法**。SQL语句通常写在mapper文件里面的。\n\n***Service***：服务\n服务是一个相对独立的功能模块，主要负责业务逻辑应用设计。首先也要设计接口，然后再设计其实现该接口的类。这样我们就可以在应用中调用service接口进行业务处理。service层业务实现，具体调用到已经定义的DAO的接口，封装service层的业务逻辑有利于通用的业务逻辑的独立性和重复利用性 。\n\n**如果把Dao层当作积木，则Service层则是对积木的搭建。**\n\n***Controller***：控制器\n主要负责具体业务模块流程的控制，此层要**调用到Service层的接口**去控制业务流程，控制的配置同样在Spring配置文件中配置。针对不同的业务流程有不同的控制器。在设计的过程可以设计出重复利用的子单元流程模块。\n\n**关系联系**\n建立了**DAO层**后才可以建立**Service层**，而**Service层**又是在**Controller层**之下的，因而**Service层**应该既调用**DAO层**的接口，又要提供接口给**Controller层**的类来进行调用，它刚好处于一个中间层的位置。每个模型都有一个**Service接口**，每个接口分别封装各自的**业务处理方法**。', '<p><strong>业务逻辑</strong><br />\n<em>Controller–&gt;service接口–&gt;serviceImpl–&gt;dao接口–&gt;daoImpl–&gt;mapper–&gt;database</em></p>\n<p><em><strong>Dao(Data Access Object)</strong></em>:数据存储对象<br />\ndao层即数据持久层，也被称为mapper层。<br />\n不管是什么框架，我们很多时候都会与数据库进行交互。如果遇到一个场景我们都要去写SQL语句，那么我们的代码就会很冗余。所以，我们就想到了把数据库封装一下，让我们的数据库的交道看起来像和一个对象打交道，这个对象通常就是DAO。当我们操作这个对象的时候，这个对象会自动产生SQL语句来和数据库进行交互，我们就只需要使用DAO就行了。<br />\n通常我们<strong>在DAO层里面写接口，里面有与数据打交道的方法</strong>。SQL语句通常写在mapper文件里面的。</p>\n<p><em><strong>Service</strong></em>：服务<br />\n服务是一个相对独立的功能模块，主要负责业务逻辑应用设计。首先也要设计接口，然后再设计其实现该接口的类。这样我们就可以在应用中调用service接口进行业务处理。service层业务实现，具体调用到已经定义的DAO的接口，封装service层的业务逻辑有利于通用的业务逻辑的独立性和重复利用性 。</p>\n<p><strong>如果把Dao层当作积木，则Service层则是对积木的搭建。</strong></p>\n<p><em><strong>Controller</strong></em>：控制器<br />\n主要负责具体业务模块流程的控制，此层要<strong>调用到Service层的接口</strong>去控制业务流程，控制的配置同样在Spring配置文件中配置。针对不同的业务流程有不同的控制器。在设计的过程可以设计出重复利用的子单元流程模块。</p>\n<p><strong>关系联系</strong><br />\n建立了<strong>DAO层</strong>后才可以建立<strong>Service层</strong>，而<strong>Service层</strong>又是在<strong>Controller层</strong>之下的，因而<strong>Service层</strong>应该既调用<strong>DAO层</strong>的接口，又要提供接口给<strong>Controller层</strong>的类来进行调用，它刚好处于一个中间层的位置。每个模型都有一个<strong>Service接口</strong>，每个接口分别封装各自的<strong>业务处理方法</strong>。</p>\n', 'SpringBoot是Spring框架的一个模块，用于创建独立的，生产级的Spring基础应用程序，并且程序员的工作量最小。它是在核心弹簧框架之上开发的。spring boot背后的主要概念是避免大量的样板代码和配置来改进开发，单元测试等。在创建新的spring应用程序的情况下，我们编写了许多XML配置，服务器设置，添加依赖项等。这些配置文件是样板代码的一个例子。Spring boot避免了所有这些样板代码。', '2021-09-01');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `press` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `abs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 152 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, 'https://i.loli.net/2019/04/10/5cada7e73d601.jpg', '三体1', '刘慈欣', '2019-05-05', '重庆出版社', '文化大革命如火如荼地进行，天文学家叶文洁在其间历经劫难，被带到军方绝秘计划“红岸工程”。叶文洁以太阳为天线，向宇宙发出地球文明的第一声啼鸣，取得了探寻外星文明的突破性进展。三颗无规则运行的太阳主导下，四光年外的“三体文明”百余次毁灭与重生，正被逼迫不得不逃离母星，而恰在此时，他们接收到了地球发来的信息。对人性绝望的叶文洁向三体人暴露了地球的坐标，彻底改变了人类的命运。', 1);
INSERT INTO `book` VALUES (3, 'https://i.loli.net/2019/04/10/5cada7e73d601.jpg', '三体2', '刘慈欣', '2019-05-05', '重庆出版社', '文化大革命', 1);
INSERT INTO `book` VALUES (7, 'https://i.loli.net/2019/04/10/5cada7e73d601.jpg', '三体3', '刘慈欣', '2019-05-05', '重庆出版社', '文化大革命', 1);
INSERT INTO `book` VALUES (148, 'http://localhost:8082/api/file/bh2bsl.jpg', 'IU', 'IU', '2021-01-01', '韩国出版社', 'iu', 2);
INSERT INTO `book` VALUES (149, 'http://localhost:8082/api/file/bh2bsl.jpg', 'IU', 'IU', '2021-01-01', '广东出版社', 'IU', 2);
INSERT INTO `book` VALUES (151, 'http://localhost:8082/api/file/vj0apr.jpg', '谋杀狄更斯（上）', '西蒙斯', '2021-01-01', '成都出版社', '谋杀狄更斯', 1);
INSERT INTO `book` VALUES (152, 'http://localhost:8082/api/file/h568ia.jpg', '谋杀狄更斯（下）', '西蒙斯', '2021-01-01', '成都出版社', '谋杀狄更斯下', 1);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `cId` int NOT NULL,
  `cName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '文学');
INSERT INTO `category` VALUES (2, '生活');
INSERT INTO `category` VALUES (3, '科技');
INSERT INTO `category` VALUES (4, '古典');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '45595d138b0a43e478502ba5f5945038', '/dzu97kRrluNC5lBfjVbOg==');
INSERT INTO `user` VALUES (2, 'user', '091b09f3305a86fdcf90c38450509426', 'YoMcgO5YwirPCFmJjUZoXQ==');
INSERT INTO `user` VALUES (4, 'hello', '23bbf6d685336b9bffb39f353d6b9f78', 'KgB59FkHzHUqZf2vBQPVGw==');

SET FOREIGN_KEY_CHECKS = 1;
