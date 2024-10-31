package com.nhatro247.nhatro247.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "tbl_feedback")
public class FeedBack {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long Feedback_ID;

    private String FullName;
    private String Email;
    private String Title;
    private String Context;
    private int isStatus;
    private String Description;

    public long getFeedBack_ID() {
        return Feedback_ID;
    }

    public void setFeedBack_ID(long feedBack_ID) {
        Feedback_ID = feedBack_ID;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String fullName) {
        FullName = fullName;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String title) {
        Title = title;
    }

    public String getContext() {
        return Context;
    }

    public void setContext(String context) {
        Context = context;
    }

    public int getIsStatus() {
        return isStatus;
    }

    public void setIsStatus(int isStatus) {
        this.isStatus = isStatus;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    @Override
    public String toString() {
        return "FeedBack [FeedBack_ID=" + Feedback_ID + ", FullName=" + FullName + ", Email=" + Email + ", Title="
                + Title
                + ", Context=" + Context + ", isStatus=" + isStatus + ", Description=" + Description + "]";
    }

}
