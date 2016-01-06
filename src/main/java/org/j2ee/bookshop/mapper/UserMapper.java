package org.j2ee.bookshop.mapper;

import org.j2ee.bookshop.domain.User;

import java.util.List;

/**
 * User dao
 * Created by Liu Yuhui on 2016/1/6.
 */
public interface UserMapper {
    List<User> getAll();
    User getById(int id);
    User getByName(String username);
    void update(User user);
    void insert(User user);
    void delete(User user);
    void deleteById(int id);
}
