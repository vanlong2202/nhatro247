package com.nhatro247.nhatro247.service.specification;

import org.springframework.data.jpa.domain.Specification;

import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.entity.NewsletterType_;
import com.nhatro247.nhatro247.entity.Newsletter_;

public class NewsletterSpecs {
    public static Specification<Newsletter> titleLike(String name) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.like(root.get(Newsletter_.TITLE), "%" + name + "%");
    }

    public static Specification<Newsletter> matchAddress(String address) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.equal(root.get(Newsletter_.NEWSLETTER_ADDRESS),
                address);
    }

    public static Specification<Newsletter> matchFormat(String format) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.like(root.get(Newsletter_.FORMAT), format);
    }

    public static Specification<Newsletter> macthType(int type) {
        return (root, query, criteriaBuilder) -> criteriaBuilder
                .equal(root.get(Newsletter_.NEWSLETTER_TYPE).get(NewsletterType_.NEWSLETTER_TYPE_ID), type);
    }

    public static Specification<Newsletter> macthPrice(double min, double max) {
        return (root, query, criteriaBuilder) -> criteriaBuilder
                .and(criteriaBuilder.gt(root.get(Newsletter_.PRICE), min),
                        criteriaBuilder.le(root.get(Newsletter_.PRICE), max));
    }

    public static Specification<Newsletter> matchAcreage(int min, int max) {
        return (root, query, criteriaBuilder) -> criteriaBuilder
                .and(criteriaBuilder.gt(root.get(Newsletter_.ACREAGE), min),
                        criteriaBuilder.le(root.get(Newsletter_.ACREAGE), max));
    }

    public static Specification<Newsletter> macthPrioritize(int prioritize) {
        return (root, query, criteriaBuilder) -> criteriaBuilder
                .equal(root.get(Newsletter_.PRIORITIZE), prioritize);
    }

    public static Specification<Newsletter> macthSelfManagement(int selfManagement) {
        return (root, query, criteriaBuilder) -> criteriaBuilder
                .equal(root.get(Newsletter_.SELF_MANAGEMENT), selfManagement);
    }

}
