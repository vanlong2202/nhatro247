package com.nhatro247.nhatro247.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.FeedBack;
import com.nhatro247.nhatro247.service.MenuService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class HomeController {
    private final MenuService menuService;

    public HomeController(MenuService menuService) {
        this.menuService = menuService;
    }

    @GetMapping("")
    public String getHomePage(Model model) {
        model.addAttribute("f", new FeedBack());
        model.addAttribute("menu", this.menuService.getAll());
        return "client/index";
    }

    @GetMapping("/login")
    public String getLoginPage() {
        return "client/login";
    }

    @GetMapping("/login1")
    public String getRegisterPage() {
        return "client/login1";
    }

    @PostMapping("/submit")
    public String postMethodName(Model model) {
        model.addAttribute("var", "Thông tin đăng nhập khum chính xác");

        return "client/login1";
    }

    @GetMapping("/admin")
    public String getAdminPage() {
        return "admin/dashboard/view";
    }

    @GetMapping("/error-page")
    public String getErrorPage() {
        return "admin/dashboard/error";
    }
}
