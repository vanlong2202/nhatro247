package com.nhatro247.nhatro247.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.entity.NewsletterType;
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

    public Newsletter getNewsletterByID(long id) {
        return this.newsletterRepository.findByNewsletterID(id);
    }

    public List<Newsletter> getAllByStatus(int isStatus) {
        return this.newsletterRepository.findByIsStatus(isStatus);
    }

    public List<Newsletter> getAllByStatusNot(int isStatus) {
        return this.newsletterRepository.findByIsStatusNot(isStatus);
    }

    public List<Newsletter> getAllBySvip(int svip) {
        return this.newsletterRepository.findBySvip(svip);
    }

    public List<Newsletter> getListActive(int isStatus, int isActive) {
        return this.newsletterRepository.findByIsStatusAndIsActive(isStatus, isActive);
    }

    public Page<Newsletter> getAll(Pageable pageable) {
        return this.newsletterRepository.findAll(pageable);
    }

    public List<Newsletter> getAll() {
        return this.newsletterRepository.findAll();
    }

    public List<Newsletter> getAllByAccount(Account account) {
        return this.newsletterRepository.findByAccount(account);
    }

    public List<Newsletter> getAllBySvip(int isStatus, int isActive, int svip) {
        return this.newsletterRepository.findByIsStatusAndIsActiveAndSvip(isStatus, isActive, svip);
    }

    public void deleteNewsletter(long id) {
        this.newsletterRepository.deleteById(id);
    }

    public Newsletter getOneNewsletter(NewsletterType newsletterType, int isStatus, int isActive, int svip) {
        Sort sort = Sort.by(Sort.Direction.DESC, "createTime");
        return this.newsletterRepository.findTopOneByNewsletterTypeAndIsStatusAndIsActiveAndSvip(newsletterType,
                isStatus, isActive, svip, sort);
    }

}
