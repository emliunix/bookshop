package org.j2ee.bookshop.controller;

import com.google.common.base.Strings;
import org.apache.log4j.Logger;
import org.j2ee.bookshop.domain.User;
import org.j2ee.bookshop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Login and Logout
 * Created by liu on 1/6/16.
 */
@Controller
public class LogInOutController {
    public static final String USER_ATTRIBUTE = "bookshop.user";

    private static Logger logger = Logger.getLogger(LogInOutController.class);

    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String loginView() {
        return "login";
    }

    @RequestMapping("/register")
    public String registerView() {
        return "register";
    }

    @RequestMapping("/sys/register")
    public void register(User user, HttpServletResponse res) throws IOException {
        if(!Strings.isNullOrEmpty(user.username) &&
                !Strings.isNullOrEmpty(user.password)) {
            userService.insert(user);
            logger.info("Registered user: " + user.toString());
        } else {
            logger.info("Failed to register user: " + user.toString());
        }
        res.sendRedirect("../login");
    }

    @RequestMapping("/sys/login")
    public void login(@RequestParam String username,
                      @RequestParam String password,
                      HttpServletRequest req,
                      HttpServletResponse res) throws IOException {
        if(!Strings.isNullOrEmpty(username)) {
            User u = userService.getByName(username);
            if(u.getPassword().equals(password)) {
                req.getSession().setAttribute(USER_ATTRIBUTE, u);
                if("admin".equals(u.role))
                    res.sendRedirect("../admin");
                else
                    res.sendRedirect("../home");
                logger.info("User logged in: " + u.toString());
                return;
            }
        }
        logger.warn("Failed to log in with [" + username + ":" + password + "]");
        res.sendRedirect("/pages/login");
    }

    @RequestMapping("/sys/logout")
    public void logout(HttpServletRequest req) {
        HttpSession sess = req.getSession(false);
        sess.removeAttribute(USER_ATTRIBUTE);
    }
}
