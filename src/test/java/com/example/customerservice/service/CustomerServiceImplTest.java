package com.example.customerservice.service;

import com.example.customerservice.web.model.Customer;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.UUID;

import static org.junit.jupiter.api.Assertions.*;

class CustomerServiceImplTest {

    @Test
    @Disabled
    void getAllCustomers() {
        assertFalse(true);
    }

    @Test
    void getCustomerById() {
        CustomerService customerServiceImpl = new CustomerServiceImpl();
        Customer customer =
                customerServiceImpl.getCustomerById(UUID.fromString("7b4a4eaf-70a6-45f8-b589-7bdb320eb3ae"));
        Assertions.assertEquals("Sachin", customer.getName());
    }
}