package com.example.service.impl;

import com.example.entity.Book;
import com.example.entity.Category;
import com.example.mapper.BookMapper;
import com.example.service.BookService;
import com.example.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService {
    @Autowired
    BookMapper bookMapper;
    @Autowired
    CategoryService categoryService;

    @Override
    public List<Book> list() {
        return bookMapper.findAll();
    }

    @Override
    public void addOrUpdate(Book book) {
        bookMapper.save(book);
    }

    @Override
    public void deleteById(int id) {
        bookMapper.deleteById(id);
    }

    @Override
    public List<Book> listByCategory(int cId) {
        Category category = categoryService.get(cId);
        return bookMapper.findAllByCategory(category);
    }

    @Override
    public List<Book> Search(String keywords) {
        return bookMapper.findAllByTitleLikeOrAuthorLike(keywords);
    }
}
