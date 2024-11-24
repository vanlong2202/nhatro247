package com.nhatro247.nhatro247.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.entity.NewsletterFollow;
import com.nhatro247.nhatro247.repository.NewsletterFollowRepository;

@Service
public class NewsletterFollowService {
    private final NewsletterFollowRepository newsletterFollowRepository;

    public NewsletterFollowService(NewsletterFollowRepository newsletterFollowRepository) {
        this.newsletterFollowRepository = newsletterFollowRepository;
    }

    public NewsletterFollow addFollow(NewsletterFollow newsletterFollow) {
        return this.newsletterFollowRepository.save(newsletterFollow);
    }

    public boolean checkFollow(Account account, Newsletter newsletter) {
        NewsletterFollow newsletterFollow = this.newsletterFollowRepository.findByAccountAndNewsletter(account,
                newsletter);
        if (newsletterFollow != null) {
            return false;
        }
        return true;
    }

    public NewsletterFollow getNewsletterFollowByAccountAndNewsletter(Account account, Newsletter newsletter) {
        return this.newsletterFollowRepository.findByAccountAndNewsletter(account, newsletter);
    }

    public List<NewsletterFollow> getAllByAccount(Account account) {
        return this.newsletterFollowRepository.findAllByAccount(account);
    }

    public void deleteFollow(NewsletterFollow newsletterFollow) {
        this.newsletterFollowRepository.delete(newsletterFollow);
    }

    public List<NewsletterFollow> getAll() {
        return this.newsletterFollowRepository.findAll();
    }

    public List<NewsletterFollow> getByNewsletterID(Newsletter newsletter) {
        return this.newsletterFollowRepository.findByNewsletter(newsletter);
    }

    public void deleteByNewsletter(Newsletter newsletter) {
        this.newsletterFollowRepository.deleteByNewsletter(newsletter);
    }
}
