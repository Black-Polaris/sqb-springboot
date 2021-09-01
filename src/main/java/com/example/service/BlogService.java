package com.example.service;

import com.example.entity.Blog;
import org.springframework.data.domain.Page;

import java.util.List;

public interface BlogService {
    public void addOrUpdate(Blog blog);
    public List<Blog> list(int page,int size);

    Blog findById(int id);
}
