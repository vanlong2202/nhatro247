package com.nhatro247.nhatro247.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "tbl_Menu")
public class Menu {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Menu_ID;

    private String MenuName;
    private String ControllerName;
    private String AcctionName;
    private int Position;
    private int isActive;
    private int Lever;

    public int getMenuID() {
        return Menu_ID;
    }

    public void setMenuID(int menuID) {
        Menu_ID = menuID;
    }

    public String getMenuName() {
        return MenuName;
    }

    public void setMenuName(String menuName) {
        MenuName = menuName;
    }

    public String getControllerName() {
        return ControllerName;
    }

    public void setControllerName(String controllerName) {
        ControllerName = controllerName;
    }

    public String getAcctionName() {
        return AcctionName;
    }

    public void setAcctionName(String acctionName) {
        AcctionName = acctionName;
    }

    public int getPosition() {
        return Position;
    }

    public void setPosition(int position) {
        Position = position;
    }

    public int getIsActive() {
        return isActive;
    }

    public void setIsActive(int isActive) {
        this.isActive = isActive;
    }

    public int getLever() {
        return Lever;
    }

    public void setLever(int lever) {
        Lever = lever;
    }

    @Override
    public String toString() {
        return "Menu [MenuID=" + Menu_ID + ", MenuName=" + MenuName + ", ControllerName=" + ControllerName
                + ", AcctionName=" + AcctionName + ", Position=" + Position + ", isActive=" + isActive + ", Lever="
                + Lever + "]";
    }

}
