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

    public void insert(User user) {
        userMapper.insert(user);
    }

    public List<User> getAll() {
        return userMapper.getAll();
    }
}
