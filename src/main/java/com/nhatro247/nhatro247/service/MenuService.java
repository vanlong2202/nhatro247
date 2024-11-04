package com.nhatro247.nhatro247.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.nhatro247.nhatro247.entity.Menu;
import com.nhatro247.nhatro247.repository.MenuRepositoey;

@Service
public class MenuService {
    private final MenuRepositoey menuRepositoey;

    public MenuService(MenuRepositoey menuRepositoey) {
        this.menuRepositoey = menuRepositoey;
    }

    public List<Menu> getAll() {
        return this.menuRepositoey.findAll();
    }
}
