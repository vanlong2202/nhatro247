package com.nhatro247.nhatro247.entity.dto;

public class DashboardAccountDTO {
    private int roleID;
    private long count;

    public DashboardAccountDTO(int roleID, long count) {
        this.roleID = roleID;
        this.count = count;
    }

    public int getRoleID() {
        return roleID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }

    public long getCount() {
        return count;
    }

    public void setCount(long count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "DashboardAccountDTO [roleID=" + roleID + ", count=" + count + "]";
    }

}
