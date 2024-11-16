package com.nhatro247.nhatro247.controller;

import java.net.http.HttpClient;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.entity.Role;
import com.nhatro247.nhatro247.service.AccountService;
import com.nhatro247.nhatro247.service.MenuService;
import com.nhatro247.nhatro247.service.NewsletterService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class AccountController {

    private final AccountService accountService;
    private final MenuService menuService;
    private final PasswordEncoder passwordEncoder;
    private final NewsletterService newsletterService;

    public AccountController(AccountService accountService,
            PasswordEncoder passwordEncoder,
            MenuService menuService,
            NewsletterService newsletterService) {
        this.accountService = accountService;
        this.passwordEncoder = passwordEncoder;
        this.menuService = menuService;
        this.newsletterService = newsletterService;
    }

    @GetMapping("/profile")
    public String getAccountManegerPage(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        model.addAttribute("menu", this.menuService.getAll());
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);
        model.addAttribute("info", account);
        model.addAttribute("news", this.newsletterService.findByIsStatusAndAccount(1, account));
        return "client/profile";
    }

    @GetMapping("/update-profile")
    public String getPageUpdateProfile(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        model.addAttribute("menu", this.menuService.getAll());
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);
        model.addAttribute("info", account);
        return "client/updateProfile";
    }

    @PostMapping("/update-info")
    public String updateAccount(@ModelAttribute("info") Account account) {
        Account acc = this.accountService.getAccountByID(account.getAccountID());
        if (acc != null) {
            acc.setFullName(account.getFullName());
            acc.setAddress(account.getAddress());
            acc.setEmail(account.getEmail());
            acc.setPhone(account.getPhone());

            this.accountService.addAccount(acc);
            return "redirect:/profile";
        } else {
            return "client/profile";
        }

    }

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("account", new Account());
        return "client/register";
    }

    @PostMapping("/register")
    public String registerAccount(Model model, Account account) {
        Account checkUser = this.accountService.getAccountByName(account.getUsername());
        Account checkEmail = this.accountService.getAccByEmail("vanlong.check@gmail.com");
        if (checkEmail != null) {
            System.out.println("Email đã được dùng");
        }
        if (checkUser == null) {

            //

            Role role = new Role();
            role.setRoleID(1);
            account.setRole(role);
            String hashPass = this.passwordEncoder.encode(account.getPassword());
            account.setPassword(hashPass);
            this.accountService.addAccount(account);
            return "redirect:/login";
        } else {
            model.addAttribute("errorUser", "Username đã được sử dụng!");
            System.out.println(model);
            return "client/register";
        }
    }

    @GetMapping("/maneger-newsletter")
    public String getNewsletterManegerPage(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        model.addAttribute("menu", this.menuService.getAll());
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);
        model.addAttribute("info", account);
        model.addAttribute("news", this.newsletterService.findByIsStatusAndAccount(1, account));
        model.addAttribute("refuse", this.newsletterService.findByIsStatusAndAccount(2, account));
        model.addAttribute("pending", this.newsletterService.findByIsStatusAndAccount(0, account));
        model.addAttribute("svip", this.newsletterService.findByAccountAndSvip(account, 1));
        model.addAttribute("countActive", this.newsletterService.findByIsStatusAndAccount(1, account).size());
        model.addAttribute("countRefuse", this.newsletterService.findByIsStatusAndAccount(2, account).size());
        model.addAttribute("countPending", this.newsletterService.findByIsStatusAndAccount(0, account).size());
        model.addAttribute("countSvip", this.newsletterService.findByAccountAndSvip(account, 1).size());
        return "client/manager";
    }

}
