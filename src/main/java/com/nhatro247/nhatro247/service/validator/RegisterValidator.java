package com.nhatro247.nhatro247.service.validator;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.service.AccountService;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

public class RegisterValidator implements ConstraintValidator<RegisterChecked, String> {
    private final AccountService accountService;

    public RegisterValidator(AccountService accountService) {
        this.accountService = accountService;
    }

    @Override
    public boolean isValid(String email, ConstraintValidatorContext context) {
        if (email == null) {
            return false;
        }
        return this.accountService.getAccByEmail(email) == null;
    }
}
