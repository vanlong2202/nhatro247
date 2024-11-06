package com.nhatro247.nhatro247.entity;

import java.util.List;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "tbl_NewsletterType")
public class NewsletterType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long newsletterTypeID;

    private String name;
    private String description;

    @OneToMany(mappedBy = "newsletterType")
    private List<Newsletter> newsletters;

    public long getNewsletterTypeID() {
        return newsletterTypeID;
    }

    public void setNewsletterTypeID(long newsletterTypeID) {
        this.newsletterTypeID = newsletterTypeID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<Newsletter> getNewsletters() {
        return newsletters;
    }

    public void setNewsletters(List<Newsletter> newsletters) {
        this.newsletters = newsletters;
    }

    @Override
    public String toString() {
        return "NewsletterType [newsletterTypeID=" + newsletterTypeID + ", name=" + name + ", description="
                + description + ", newsletters=" + newsletters + "]";
    }

}
