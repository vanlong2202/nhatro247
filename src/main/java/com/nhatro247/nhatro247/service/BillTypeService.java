package com.nhatro247.nhatro247.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.nhatro247.nhatro247.entity.BillType;
import com.nhatro247.nhatro247.repository.BillTypeRepository;

@Service
public class BillTypeService {
    private final BillTypeRepository billTypeRepository;

    public BillTypeService(BillTypeRepository billTypeRepository) {
        this.billTypeRepository = billTypeRepository;
    }

    public List<BillType> getAll() {
        return this.billTypeRepository.findAll();
    }

}
