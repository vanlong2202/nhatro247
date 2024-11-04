package com.nhatro247.nhatro247.controller;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Role;
import com.nhatro247.nhatro247.service.AccountService;

import jakarta.validation.Valid;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

@Controller
public class AccountController {

    // private final PasswordEncoder passwordEncoder;
    private final AccountService accountService;
    private final PasswordEncoder passwordEncoder;

    public AccountController(AccountService accountService, PasswordEncoder passwordEncoder) {
        this.accountService = accountService;
        this.passwordEncoder = passwordEncoder;
    }

    @PostMapping("/register")
    public String register(Model model, @ModelAttribute Account account) {

        // Account check = this.accountService.checkEmail(account.getEmail());
        // Account checkUser = this.accountService.checkUsernam(account.getUsername());
        // if (checkUser != null) {
        // model.addAttribute("errolUser", "Tên người dùng đã đưowcj sử dụng !!");
        // } else {
        // if (check != null) {
        // model.addAttribute("errolEmail", "Email đã tồn tại !!");
        // } else {
        // Role role = new Role();
        // role.setRole_id(1);
        // account.setRole(role);
        // String hashPassword = passwordEncoder.encode(account.getPassword());
        // account.setPassword(hashPassword);
        // this.accountService.addAccount(account);

        // }
        // }
        return "redirect:client/login";
    }

}
