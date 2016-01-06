package org.j2ee.bookshop.controller;

import com.google.common.base.Strings;
import org.j2ee.bookshop.domain.User;
import org.j2ee.bookshop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * User Controller
 * Created by Liu Yuhui on 2016/1/6.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping("/add")
    public void addUser(User user,ServletContext context, HttpServletResponse response) throws IOException {
        if(!Strings.isNullOrEmpty(user.username) &&
                !Strings.isNullOrEmpty(user.password))
            userService.insert(user);
        response.sendRedirect(context.getContextPath() + "/user/list");
    }

    @RequestMapping("/list")
    public String userHome (Model m) {
        m.addAttribute("users", userService.getAll());
        return "user";
    }
}
