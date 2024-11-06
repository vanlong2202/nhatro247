package com.nhatro247.nhatro247.entity.dto;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Newsletter;

public class InfoNewsletterDTO {
    private Account account;
    private Newsletter newsletter;

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public Newsletter getNewsletter() {
        return newsletter;
    }

    public void setNewsletter(Newsletter newsletter) {
        this.newsletter = newsletter;
    }

}
