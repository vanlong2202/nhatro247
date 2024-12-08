package com.nhatro247.nhatro247.entity.dto;

public class ItemsNewsletterAddressDTO {
    private String address;
    private long count;

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public long getCount() {
        return count;
    }

    public void setCount(long count) {
        this.count = count;
    }

    public ItemsNewsletterAddressDTO(String address, long count) {
        this.address = address;
        this.count = count;
    }

}
