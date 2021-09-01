package com.example.service;

import com.example.entity.Book;
import com.sun.org.apache.xpath.internal.operations.Bool;

import java.util.List;

public interface BookService {
    public List<Book> list();
    public void addOrUpdate(Book book);
    public void deleteById(int id);
    public List<Book> listByCategory(int cId);
    public List<Book> Search(String keywords);
}
