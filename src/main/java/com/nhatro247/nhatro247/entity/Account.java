package com.nhatro247.nhatro247.entity;

import java.util.List;

import com.nhatro247.nhatro247.service.validator.RegisterChecked;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;

@Entity
@Table(name = "tbl_account")
public class Account {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int accountID;
    private String username;
    private String fullName;
    private String phone;
    private String address;
    private String password;

    @NotNull
    private String email;

    private String facebook;
    private String description;

    @ManyToOne
    @JoinColumn(name = "roleID")
    private Role role;

    @OneToMany(mappedBy = "account")
    private List<Newsletter> newsletter;

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFacebook() {
        return facebook;
    }

    public void setFacebook(String facebook) {
        this.facebook = facebook;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public List<Newsletter> getNewsletter() {
        return newsletter;
    }

    public void setNewsletter(List<Newsletter> newsletter) {
        this.newsletter = newsletter;
    }

    @Override
    public String toString() {
        return "Account [accountID=" + accountID + ", username=" + username + ", fullName=" + fullName + ", phone="
                + phone + ", address=" + address + ", password=" + password + ", email=" + email + ", facebook="
                + facebook + ", description=" + description + ", role=" + role + ", newsletter=" + newsletter + "]";
    }

}
