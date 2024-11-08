package com.nhatro247.nhatro247.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.repository.NewsletterRepository;

@Service
public class NewsletterService {
    private final NewsletterRepository newsletterRepository;

    public NewsletterService(NewsletterRepository newsletterRepository) {
        this.newsletterRepository = newsletterRepository;
    }

    public Newsletter addNewsletter(Newsletter newsletter) {
        return this.newsletterRepository.save(newsletter);
    }

    public Newsletter getNewsletterByID(int id) {
        return this.newsletterRepository.findByNewsletterID(id);
    }

    public List<Newsletter> getAllByStatus(int isStatus) {
        return this.newsletterRepository.findByIsStatus(isStatus);
    }

    public List<Newsletter> getListActive(int isStatus, int isActive) {
        return this.newsletterRepository.findByIsStatusAndIsActive(isStatus, isActive);
    }

    public List<Newsletter> getAll() {
        return this.newsletterRepository.findAll();
    }

    public List<Newsletter> getAllByAccount(Account account) {
        return this.newsletterRepository.findByAccount(account);
    }
}
