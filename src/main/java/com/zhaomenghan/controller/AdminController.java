package com.zhaomenghan.controller;

import com.zhaomenghan.domain.Admin;
import com.zhaomenghan.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;


@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminService service;

    @PostMapping("/login")
    public String login(HttpServletRequest req,Admin admin) {
        Admin login = service.login(admin);
        if (login == null) {
            return "LoginError";
        } else {
            req.setAttribute("admin",login);
            return "admin";
        }
    }
    @RequestMapping("/quit")
    public String quit(HttpServletRequest request) {
        request.removeAttribute("admin");
        if (request.getAttribute("admin") == null || request.getAttribute("admin").equals("")) {
            return "QuitSuccess";
        } else {
            return "error";
        }
    }
}
