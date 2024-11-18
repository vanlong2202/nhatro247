package com.nhatro247.nhatro247.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nhatro247.nhatro247.entity.NewsletterType;
import java.util.List;

@Repository
public interface NewsletterTypeRepository extends JpaRepository<NewsletterType, Long> {
    NewsletterType findByNewsletterTypeID(long newsletterTypeID);

    NewsletterType findByName(String name);

}
