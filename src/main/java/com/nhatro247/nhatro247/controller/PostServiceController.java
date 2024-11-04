package com.nhatro247.nhatro247.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.FeedBack;
import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.service.MenuService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class PostServiceController {
    private final MenuService menuService;

    public PostServiceController(MenuService menuService) {
        this.menuService = menuService;
    }

    @GetMapping("/post")
    public String getPostPage(Model model) {
        model.addAttribute("menu", this.menuService.getAll());
        // model.addAttribute("user", new Account());
        // model.addAttribute("newsletter", new Newsletter());
        return "client/post";
    }

    @PostMapping("/new/port")
    public String add(@ModelAttribute Account user, @ModelAttribute Newsletter newsletter) {

        return "redirect:/post";
    }

}
