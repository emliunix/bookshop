package org.j2ee.bookshop.controller;

import org.j2ee.bookshop.domain.Book;
import org.j2ee.bookshop.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Book Controller
 * Created by liu on 1/7/16.
 */
@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    BookService bookService;

    @RequestMapping("/list")
    public String list(Model m) {
        m.addAttribute("books", null);
        return "book";
    }

    @RequestMapping("/add")
    public void add(Book book,
                    HttpServletResponse res) throws IOException {
        bookService.insert(book);
        res.sendRedirect("list");
    }

    @RequestMapping("/edit")
    public String editView(@RequestParam int id, Model m) {
        Book book = bookService.getById(id);
        m.addAttribute("book", book);
        return "book-edit";
    }

    @RequestMapping("/edit-submit")
    public void edit(Book book, HttpServletResponse res) throws IOException {
        bookService.update(book);
        res.sendRedirect("list");
    }

    @RequestMapping("/delete")
    public void delete(@RequestParam int id, HttpServletResponse res) throws IOException {
        bookService.deleteById(id);
        res.sendRedirect("list");
    }
}
