package com.example.customerservice.web.controller;

import com.example.customerservice.service.CustomerService;
import com.example.customerservice.web.model.Customer;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.UUID;

@RestController
@RequestMapping("api/v1/customer")
@RequiredArgsConstructor
public class CustomerController {

    private final CustomerService customerService;

    @GetMapping("/{customer-id}")
    public ResponseEntity<Customer> getAllUsers(@PathVariable("customer-id") UUID customerId) {
        return new ResponseEntity<Customer>(customerService.getCustomerById(customerId), HttpStatus.OK);
    }
}
