package com.example.mapper;

import com.example.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
 * @author sqb
 * 用户持久层，用来操作数据库数据
 */
@Mapper
@Repository
public interface UserMapper {
    /**
     * 通过用户名查找用户
     * @param username
     * @return User
     */
    User findByUsername(String username);
    /**
     * 通过用户名和密码查找用户
     * @param username
     * @param password
     * @return User
     */
    User getByUsernameAndPassword(String username, String password);

    /**
     * 添加新用户
     * @param user
     * @return User
     */
    void save(User user);
}
