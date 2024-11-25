package com.nhatro247.nhatro247.entity;

import java.util.List;

import jakarta.persistence.Id;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "tbl_billtype")
public class BillType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long billTypeID;

    private String name;
    private String description;
    @OneToMany(mappedBy = "billType")
    private List<Bill> bill;

    public long getBillTypeID() {
        return billTypeID;
    }

    public void setBillTypeID(long billTypeID) {
        this.billTypeID = billTypeID;
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

    public List<Bill> getBill() {
        return bill;
    }

    public void setBill(List<Bill> bill) {
        this.bill = bill;
    }

    @Override
    public String toString() {
        return "BillType [billTypeID=" + billTypeID + ", name=" + name + ", description=" + description + ", bill="
                + bill + "]";
    }

}
