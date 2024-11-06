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
    private int menuID;

    private String menuName;
    private String controllerName;
    private String acctionName;
    private int position;
    private int isActive;
    private int lever;

    public int getMenuID() {
        return menuID;
    }

    public void setMenuID(int menuID) {
        this.menuID = menuID;
    }

    public String getControllerName() {
        return controllerName;
    }

    public void setControllerName(String controllerName) {
        this.controllerName = controllerName;
    }

    public String getAcctionName() {
        return acctionName;
    }

    public void setAcctionName(String acctionName) {
        this.acctionName = acctionName;
    }

    public int getPosition() {
        return position;
    }

    public void setPosition(int position) {
        this.position = position;
    }

    public int getIsActive() {
        return isActive;
    }

    public void setIsActive(int isActive) {
        this.isActive = isActive;
    }

    public int getLever() {
        return lever;
    }

    public void setLever(int lever) {
        this.lever = lever;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    @Override
    public String toString() {
        return "Menu [menuID=" + menuID + ", menuName=" + menuName + ", controllerName=" + controllerName
                + ", acctionName=" + acctionName + ", position=" + position + ", isActive=" + isActive + ", lever="
                + lever + "]";
    }

}
