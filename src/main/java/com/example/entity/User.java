package com.example.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author sqb
 * 用户对象
 */
@NoArgsConstructor
@Data
@Accessors(chain = true)
public class User {
    Integer id;
    String username;
    String password;
    String salt;

}
