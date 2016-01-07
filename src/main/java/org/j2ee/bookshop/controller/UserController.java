package org.j2ee.bookshop.controller;

import com.google.common.base.Strings;
import org.apache.log4j.Logger;
import org.j2ee.bookshop.domain.User;
import org.j2ee.bookshop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * User Controller
 * Created by Liu Yuhui on 2016/1/6.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    private static Logger logger = Logger.getLogger(UserController.class);

    @Autowired
    UserService userService;

    @RequestMapping("/add")
    public void addUser(User user, HttpServletResponse response) throws IOException {
        if(!Strings.isNullOrEmpty(user.username) &&
                !Strings.isNullOrEmpty(user.password)) {
            userService.insert(user);
            logger.info("user added: " + user.toString());
        } else {
            logger.warn("invalid user to add: " + user.toString());
        }
        response.sendRedirect("list");
    }

    @RequestMapping("/list")
    public String userHome (Model m) {
        m.addAttribute("users", userService.getAll());
        return "user";
    }

    @RequestMapping("/delete")
    public void delete (@RequestParam int id, HttpServletResponse res) throws IOException {
        userService.deleteById(id);
        res.sendRedirect("list");
    }
}
