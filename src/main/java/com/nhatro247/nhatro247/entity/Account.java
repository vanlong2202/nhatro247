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
    private int Account_ID;
    private String username;
    private String FullName;
    private String Phone;
    private String Address;
    private String Password;

    @NotNull
    private String email;

    private String Facebook;
    private String Description;

    @ManyToOne
    @JoinColumn(name = "Role_id")
    private Role role;

    @OneToMany(mappedBy = "account")
    private List<Newsletter> newsletter;

    public int getAccount_ID() {
        return Account_ID;
    }

    public void setAccount_ID(int account_ID) {
        Account_ID = account_ID;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String fullName) {
        FullName = fullName;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) {
        Phone = phone;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public List<Newsletter> getNewsletter() {
        return newsletter;
    }

    public void setNewsletter(List<Newsletter> newsletter) {
        this.newsletter = newsletter;
    }

    public String getFacebook() {
        return Facebook;
    }

    public void setFacebook(String facebook) {
        Facebook = facebook;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String toString() {
        return "Account [Account_ID=" + Account_ID + ", username=" + username + ", FullName=" + FullName + ", Phone="
                + Phone + ", Address=" + Address + ", Password=" + Password + ", email=" + email + ", Facebook="
                + Facebook + ", Description=" + Description + ", role=" + role + "]";
    }

}
