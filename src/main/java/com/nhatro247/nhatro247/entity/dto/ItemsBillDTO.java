package com.nhatro247.nhatro247.entity.dto;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Bill;
import com.nhatro247.nhatro247.entity.BillType;

public class ItemsBillDTO {
    private Account account;
    private Bill bill;

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public Bill getBill() {
        return bill;
    }

    public void setBill(Bill bill) {
        this.bill = bill;
    }

    @Override
    public String toString() {
        return "ItemsBillDTO [account=" + account + ", bill=" + bill + "]";
    }

}
