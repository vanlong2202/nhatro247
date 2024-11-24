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
    private long reportID;

    private String context;
    private String phone;
    private String email;
    private int isStatus;
    private String createTime;

    @ManyToOne
    @JoinColumn(name = "newsletterID")
    private Newsletter newsletter;

    public long getReportID() {
        return reportID;
    }

    @Override
    public String toString() {
        return "ReportNewsletter [reportID=" + reportID + ", context=" + context + ", phone=" + phone + ", email="
                + email + ", isStatus=" + isStatus + ", newsletter=" + newsletter + "]";
    }

    public void setReportID(long reportID) {
        this.reportID = reportID;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getIsStatus() {
        return isStatus;
    }

    public void setIsStatus(int isStatus) {
        this.isStatus = isStatus;
    }

    public Newsletter getNewsletter() {
        return newsletter;
    }

    public void setNewsletter(Newsletter newsletter) {
        this.newsletter = newsletter;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

}
