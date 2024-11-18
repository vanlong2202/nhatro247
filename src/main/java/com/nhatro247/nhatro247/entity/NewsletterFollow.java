package com.nhatro247.nhatro247.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "tbl_NewsletterFollow")
public class NewsletterFollow {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long newsletterFollowID;

    @ManyToOne
    @JoinColumn(name = "newsletterID")
    private Newsletter newsletter;

    @ManyToOne
    @JoinColumn(name = "accountID")
    private Account account;

    private String description;

    public Newsletter getNewsletter() {
        return newsletter;
    }

    public void setNewsletter(Newsletter newsletter) {
        this.newsletter = newsletter;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public long getNewsletterFollowID() {
        return newsletterFollowID;
    }

    public void setNewsletterFollowID(long newsletterFollowID) {
        this.newsletterFollowID = newsletterFollowID;
    }

    @Override
    public String toString() {
        return "NewsletterFollow [newsletterFollowID=" + newsletterFollowID + ", newsletter=" + newsletter
                + ", account=" + account + ", description=" + description + "]";
    }

}
