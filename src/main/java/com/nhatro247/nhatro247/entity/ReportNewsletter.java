package com.nhatro247.nhatro247.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "tbl_report")
public class ReportNewsletter {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long Report_ID;

    private String Context;
    private String Phone;
    private String Email;
    private int isStatus;

    @ManyToOne
    @JoinColumn(name = "Newsletter_ID")
    private Newsletter newsletter;

    public long getReport_ID() {
        return Report_ID;
    }

    public void setReport_ID(long report_ID) {
        Report_ID = report_ID;
    }

    public String getContext() {
        return Context;
    }

    public void setContext(String context) {
        Context = context;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) {
        Phone = phone;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public int getIsStatus() {
        return isStatus;
    }

    public void setIsStatus(int isStatus) {
        this.isStatus = isStatus;
    }

}
