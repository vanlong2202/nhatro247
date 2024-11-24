package com.nhatro247.nhatro247.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.entity.NewsletterFollow;

@Repository
public interface NewsletterFollowRepository extends JpaRepository<NewsletterFollow, Long> {
    NewsletterFollow findByAccountAndNewsletter(Account account, Newsletter newsletter);

    List<NewsletterFollow> findAllByAccount(Account account);

    List<NewsletterFollow> findByNewsletter(Newsletter newsletter);

    void delete(NewsletterFollow newsletterFollow);

    void deleteByNewsletter(Newsletter newsletter);
}
