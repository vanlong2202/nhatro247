package com.nhatro247.nhatro247.service;

import java.util.Collections;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.nhatro247.nhatro247.entity.Account;

@Service
public class CustomUserDetailsService implements UserDetailsService {
    private final AccountService accountService;

    public CustomUserDetailsService(AccountService accountService) {
        this.accountService = accountService;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Account account = this.accountService.getAccountByName(username);
        if (account == null) {
            throw new UsernameNotFoundException("Account fail");
        }
        return new User(account.getUsername(), account.getPassword(),
                Collections.singletonList(new SimpleGrantedAuthority("ROLE_" + account.getRole().getRoleName())));
    }

}
