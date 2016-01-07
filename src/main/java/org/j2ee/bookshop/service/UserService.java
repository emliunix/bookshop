package org.j2ee.bookshop.service;

import org.j2ee.bookshop.domain.User;
import org.j2ee.bookshop.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * User service
 * Created by Liu Yuhui on 2016/1/6.
 */
@Repository
public class UserService {
    @Autowired
    UserMapper userMapper;

    public List<User> getAll() {
        return userMapper.getAll();
    }

    public User getByName(String username) {
        return userMapper.getByName(username);
    }

    public User getById(int id) {
        return userMapper.getById(id);
    }

    public void insert(User user) {
        userMapper.insert(user);
    }

    public void update(User user) {
        userMapper.update(user);
    }

    public void delete(User user) {
        userMapper.delete(user);
    }

    public void deleteById(int id) {
        userMapper.deleteById(id);
    }
}
