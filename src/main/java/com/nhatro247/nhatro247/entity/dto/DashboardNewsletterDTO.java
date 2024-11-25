package com.nhatro247.nhatro247.entity.dto;

public class DashboardNewsletterDTO {
    private String date;
    private int statusID;
    private long count;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public long getCount() {
        return count;
    }

    public void setCount(long count) {
        this.count = count;
    }

    public int getStatusID() {
        return statusID;
    }

    public void setStatusID(int statusID) {
        this.statusID = statusID;
    }

    @Override
    public String toString() {
        return "DashboardNewsletterDTO [date=" + date + ", statusID=" + statusID + ", count=" + count + "]";
    }

    public DashboardNewsletterDTO(String date, int statusID, long count) {
        this.date = date;
        this.statusID = statusID;
        this.count = count;
    }

}
