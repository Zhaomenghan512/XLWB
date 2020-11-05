package com.zhaomenghan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class URLController {
    @RequestMapping("/login")
    public String Login() {
        return "Login";
    }
    @RequestMapping("/index")
    public String index() {
        return "index";
    }
    @RequestMapping("/error")
    public String error(){
        return "error";
    }
//    @RequestMapping("/ProductManager")
//    public String ProductManager() {
//        return "ProductManager";
//    }
}
