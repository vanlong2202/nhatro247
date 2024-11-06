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
    private long feedBackID;

    private String fullName;
    private String email;
    private String title;
    private String context;
    private int isStatus;
    private String description;

    public long getFeedBackID() {
        return feedBackID;
    }

    public void setFeedBackID(long feedBackID) {
        this.feedBackID = feedBackID;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public int getIsStatus() {
        return isStatus;
    }

    public void setIsStatus(int isStatus) {
        this.isStatus = isStatus;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "FeedBack [feedBackID=" + feedBackID + ", fullName=" + fullName + ", email=" + email + ", title=" + title
                + ", context=" + context + ", isStatus=" + isStatus + ", description=" + description + "]";
    }

}
