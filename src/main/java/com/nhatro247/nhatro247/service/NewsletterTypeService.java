package com.nhatro247.nhatro247.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.nhatro247.nhatro247.entity.NewsletterType;
import com.nhatro247.nhatro247.repository.NewsletterTypeRepository;

@Service
public class NewsletterTypeService {
    private final NewsletterTypeRepository newsletterTypyRepository;

    public NewsletterTypeService(NewsletterTypeRepository newsletterTypyRepository) {
        this.newsletterTypyRepository = newsletterTypyRepository;
    }

    public List<NewsletterType> getAllType() {
        return this.newsletterTypyRepository.findAll();
    }

    public NewsletterType getTypeByName(String name) {
        return this.newsletterTypyRepository.findByName(name);
    }

    public NewsletterType getTypeByID(int id) {
        return this.newsletterTypyRepository.findByNewsletterTypeID(id);
    }

}
