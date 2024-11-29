package com.nhatro247.nhatro247.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Role;

import java.util.List;

@Repository
public interface AccountRepository extends JpaRepository<Account, Integer> {
    Account findByEmail(String email);

    Account findByUsername(String username);

    Account findByAccountID(int accountID);

    List<Account> findByRole(Role role);

    void deleteById(int id);

    @Query(value = "select count(*) from tbl_account where roleid = 1", nativeQuery = true)
    int getCountAccount();

    @Query(value = "SELECT roleid, count(*) FROM nhatro2471.tbl_account group by roleid", nativeQuery = true)
    List<Object[]> getCountAccDashboard();

}
