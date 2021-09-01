package com.example.service;

import com.example.entity.Category;

import java.util.List;

/**
 * @author sqb
 * 图书类别逻辑层
 */
public interface CategoryService {
    public List<Category> list();
    public Category get(int id);
}
