package com.nhatro247.nhatro247.entity.dto;

import java.util.List;
import java.util.Optional;

public class NewsletterCriteriaDTO {
    private Optional<String> page;
    private Optional<List<String>> type;
    private Optional<String> acreage;
    private Optional<String> prioritize;
    private Optional<String> selfManagement;
    private Optional<String> price;
    private Optional<String> title;
    private Optional<String> format;
    private Optional<String> address;
    private Optional<String> sort;

    public Optional<String> getPage() {
        return page;
    }

    public void setPage(Optional<String> page) {
        this.page = page;
    }

    public Optional<List<String>> getType() {
        return type;
    }

    public void setType(Optional<List<String>> type) {
        this.type = type;
    }

    public Optional<String> getAcreage() {
        return acreage;
    }

    public void setAcreage(Optional<String> acreage) {
        this.acreage = acreage;
    }

    public Optional<String> getPrioritize() {
        return prioritize;
    }

    public void setPrioritize(Optional<String> prioritize) {
        this.prioritize = prioritize;
    }

    public Optional<String> getSelfManagement() {
        return selfManagement;
    }

    public void setSelfManagement(Optional<String> selfManagement) {
        this.selfManagement = selfManagement;
    }

    public Optional<String> getPrice() {
        return price;
    }

    public void setPrice(Optional<String> price) {
        this.price = price;
    }

    public Optional<String> getTitle() {
        return title;
    }

    public void setTitle(Optional<String> title) {
        this.title = title;
    }

    public Optional<String> getFormat() {
        return format;
    }

    public void setFormat(Optional<String> format) {
        this.format = format;
    }

    public Optional<String> getAddress() {
        return address;
    }

    public void setAddress(Optional<String> address) {
        this.address = address;
    }

    public Optional<String> getSort() {
        return sort;
    }

    public void setSort(Optional<String> sort) {
        this.sort = sort;
    }

}
