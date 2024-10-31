package com.nhatro247.nhatro247;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(exclude = org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
public class Nhatro247Application {

	public static void main(String[] args) {
		SpringApplication.run(Nhatro247Application.class, args);
	}

}
