package com.example.controller;

import com.example.entity.Blog;
import com.example.mapper.BlogMapper;
import com.example.result.Result;
import com.example.result.ResultFactory;
import com.example.service.impl.BlogServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
public class BlogController {
    @Autowired
    BlogServiceImpl blogServiceImpl;
    @Autowired
    BlogMapper blogMapper;


    @CrossOrigin
    @PostMapping("api/blog/article")
    public Result saveArticle(@RequestBody Blog blog){
        blogServiceImpl.addOrUpdate(blog);
        System.out.println("添加测试"+blog.getArticle_content_md()+" " +blog.getArticle_content_html() +" "+blog.getArticle_date());
        return ResultFactory.buildSuccessResult("保存成功");
    }

    @CrossOrigin
    @GetMapping("api/blog/{page}/{size}")
    public PageInfo<Blog> list(@PathVariable("page")int page, @PathVariable("size")int size) {
        PageHelper.startPage(page,size);
        List<Blog> list = blogServiceImpl.list(page,size);
        PageInfo<Blog> pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @CrossOrigin
    @GetMapping("/api/article/{id}")
    public Blog getArticleDetails(@PathVariable("id")int id){
        return blogServiceImpl.findById(id);
    }
}
