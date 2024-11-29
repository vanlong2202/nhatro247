package com.nhatro247.nhatro247.entity.dto;

public class DashboardFeedbackDTO {
    private int status;
    private long count;

    public DashboardFeedbackDTO(int status, long count) {
        this.status = status;
        this.count = count;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public long getCount() {
        return count;
    }

    public void setCount(long count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "DashboardFeedbackDTO [status=" + status + ", count=" + count + "]";
    }

}
