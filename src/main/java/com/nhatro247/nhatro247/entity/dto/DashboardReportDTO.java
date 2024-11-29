package com.nhatro247.nhatro247.entity.dto;

public class DashboardReportDTO {
    private int status;
    private long count;

    public DashboardReportDTO(int status, long count) {
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
        return "DashboardReportDTO [status=" + status + ", count=" + count + "]";
    }

}
