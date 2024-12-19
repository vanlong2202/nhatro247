package com.nhatro247.nhatro247.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nhatro247.nhatro247.entity.BillType;

@Repository
public interface BillTypeRepository extends JpaRepository<BillType, Long> {

}
