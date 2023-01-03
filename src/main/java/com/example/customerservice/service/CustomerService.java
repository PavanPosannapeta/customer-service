package com.example.customerservice.service;

import com.example.customerservice.web.model.Customer;

import java.util.List;
import java.util.UUID;

public interface CustomerService {

    List<Customer> getAllCustomers();

    Customer getCustomerById(UUID id);

}
