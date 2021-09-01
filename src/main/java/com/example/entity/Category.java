package com.example.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author sqb
 * 图书类别
 */
@NoArgsConstructor
@Data
@Accessors(chain = true)
public class Category {
    Integer cId;
    String cName;
}
