package com.nhatro247.nhatro247.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    @RequestMapping("/hello")
    public String getHomePage() {
        return "hello";
    }

}
