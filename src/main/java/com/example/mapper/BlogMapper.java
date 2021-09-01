package com.example.mapper;

import com.example.entity.Blog;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface BlogMapper {
    void save(Blog blog);
    List<Blog> list();

    Blog findById(int id);
}
