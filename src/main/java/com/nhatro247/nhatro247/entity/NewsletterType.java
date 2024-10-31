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
    private long NewsletterType_ID;

    private String name;
    private String Description;

    @OneToMany(mappedBy = "newsletterType")
    private List<Newsletter> newsletters;

    public long getNewsletterType_ID() {
        return NewsletterType_ID;
    }

    public void setNewsletterType_ID(long newsletterType_ID) {
        NewsletterType_ID = newsletterType_ID;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "NewsletterType [NewsletterType_ID=" + NewsletterType_ID + ", name=" + name + ", Description="
                + Description + "]";
    }

}
