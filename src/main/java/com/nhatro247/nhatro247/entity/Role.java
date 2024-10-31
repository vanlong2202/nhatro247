package com.nhatro247.nhatro247.entity;

import java.util.List;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "tbl_roles")
public class Role {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long Role_id;

    private String Role_name;
    private String Description;

    @OneToMany(mappedBy = "role")
    private List<Account> accounts;

    public long getRole_id() {
        return Role_id;
    }

    public void setRole_id(long role_id) {
        Role_id = role_id;
    }

    public String getRole_name() {
        return Role_name;
    }

    public void setRole_name(String role_name) {
        Role_name = role_name;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    @Override
    public String toString() {
        return "Role [Role_id=" + Role_id + ", Role_name=" + Role_name + ", Description=" + Description + ", accounts="
                + accounts + "]";
    }

}
