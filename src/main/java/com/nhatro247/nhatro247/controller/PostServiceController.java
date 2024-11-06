package com.nhatro247.nhatro247.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.FeedBack;
import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.entity.dto.InfoNewsletterDTO;
import com.nhatro247.nhatro247.service.AccountService;
import com.nhatro247.nhatro247.service.MenuService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class PostServiceController {
    private final MenuService menuService;
    private final AccountService accountService;

    public PostServiceController(MenuService menuService, AccountService accountService) {
        this.menuService = menuService;
        this.accountService = accountService;
    }

    @GetMapping("/post")
    public String getPostPage(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        model.addAttribute("menu", this.menuService.getAll());
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);
        InfoNewsletterDTO dto = new InfoNewsletterDTO();
        dto.setAccount(account);
        dto.setNewsletter(new Newsletter());
        model.addAttribute("infoNewsletterDTO", dto);
        return "client/post";
    }

    @PostMapping("/new/port")
    public String add(@ModelAttribute("infoNewsletterDTO") InfoNewsletterDTO infoNewsletterDTO) {

        return "redirect:/post";
    }

}
