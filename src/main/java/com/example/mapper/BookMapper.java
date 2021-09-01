package com.example.mapper;

import com.example.entity.Book;
import com.example.entity.Category;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author sqb
 * 图书持久层
 */
@Mapper
@Repository
public interface BookMapper {
    List<Book> findAll();
    void save(Book book);
    void deleteById(int id);
    List<Book> findAllByCategory(Category category);
    List<Book> findAllByTitleLikeOrAuthorLike(String keywords);
}
