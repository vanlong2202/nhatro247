package com.nhatro247.nhatro247.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nhatro247.nhatro247.entity.Account;
import java.util.List;

@Repository
public interface AccountRepository extends JpaRepository<Account, Integer> {
    Account findByEmail(String email);

    Account findByUsername(String username);

    Account findByAccountID(int accountID);

}
