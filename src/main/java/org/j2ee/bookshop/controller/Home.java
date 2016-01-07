package org.j2ee.bookshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Home Controller
 * Created by Liu Yuhui on 2016/1/6.
 */
@Controller
public class Home {
    @RequestMapping("/home")
    public String homePage() {
        return "home";
    }
    @RequestMapping("/admin")
    public String adminPage() {
        return "admin";
    }
}
