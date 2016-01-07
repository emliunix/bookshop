package org.j2ee.bookshop.service;

import org.j2ee.bookshop.domain.Book;
import org.j2ee.bookshop.mapper.BookMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Book Repository
 * Created by liu on 1/7/16.
 */
@Repository
public class BookService {

    @Autowired
    private BookMapper bookMapper;

    public List<Book> getAll() {
        return bookMapper.getAll();
    }

    public List<Book> getByCategoryId(int cid) {
        return bookMapper.getByCategoryId(cid);
    }

    public Book getById(int id) {
        return bookMapper.getById(id);
    }

    public void insert(Book book) {
        bookMapper.insert(book);
    }

    public void update(Book book) {
        bookMapper.update(book);
    }

    public void deleteById(int id) {
        bookMapper.deleteById(id);
    }
}
