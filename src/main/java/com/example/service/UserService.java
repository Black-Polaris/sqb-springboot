package com.example.service;

import com.example.entity.User;

/**
 * @author sqb
 * 用户数据逻辑层
 */
public interface UserService {
    public boolean isExist(String username);
    public User getByName(String username);
    public User get(String username,String password);
    public void add(User user);
}
