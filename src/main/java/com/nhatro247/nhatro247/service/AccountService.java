package com.nhatro247.nhatro247.service;

import java.util.List;

import org.eclipse.tags.shaded.org.apache.regexp.recompile;
import org.springframework.stereotype.Service;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Role;
import com.nhatro247.nhatro247.repository.AccountRepository;

@Service
public class AccountService {
    private final AccountRepository accountRepository;

    public AccountService(AccountRepository accountRepository) {
        this.accountRepository = accountRepository;
    }

    public List<Account> getAllAccounts() {
        return this.accountRepository.findAll();
    }

    public List<Account> getAllAccountUser(Role role) {
        return this.accountRepository.findByRole(role);
    }

    public Account addAccount(Account account) {
        return this.accountRepository.save(account);
    }

    public Account getAccByEmail(String emailString) {
        return this.accountRepository.findByEmail(emailString);
    }

    public Account getAccountByName(String username) {
        return this.accountRepository.findByUsername(username);
    }

    public Account getAccountByID(int id) {
        return this.accountRepository.findByAccountID(id);
    }

    public void deleAccount(int id) {
        this.accountRepository.deleteById(id);
    }
}
