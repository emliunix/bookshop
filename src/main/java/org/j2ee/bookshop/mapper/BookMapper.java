package org.j2ee.bookshop.mapper;

import org.j2ee.bookshop.domain.Book;

import java.util.List;

/**
 * Created by liu on 1/7/16.
 */
public interface BookMapper {
    List<Book> getAll();
    List<Book> getByCategoryId(int cid);
    Book getById(int id);
    void insert(Book book);
    void update(Book book);
    void deleteById(int id);
}
