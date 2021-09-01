package com.example.service.impl;

import com.example.entity.Blog;
import com.example.mapper.BlogMapper;
import com.example.service.BlogService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BlogServiceImpl implements BlogService {

    @Autowired
    BlogMapper blogMapper;

    @Override
    public void addOrUpdate(Blog blog) {
        blogMapper.save(blog);
    }

    @Override
    public List<Blog> list(int page,int size) {
        return blogMapper.list();
    }

    @Override
    public Blog findById(int id) {
        return blogMapper.findById(id);
    }


}
