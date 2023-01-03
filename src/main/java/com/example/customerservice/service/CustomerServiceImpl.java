package com.example.customerservice.service;

import com.example.customerservice.web.model.Customer;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Service
public class CustomerServiceImpl implements CustomerService {

    private static List<Customer> customers = new ArrayList<>();

    static {
        Customer customer1 = Customer.builder().id(UUID.fromString("7b4a4eaf-70a6-45f8-b589-7bdb320eb3ae"))
                .name("Sachin").age(43).build();
        Customer customer2 = Customer.builder().id(UUID.fromString("06ce6349-69e5-4fdc-8065-adef855a0914"))
                .name("Rahul").age(44).build();
        Customer customer3 = Customer.builder().id(UUID.fromString("17df4a8b-d2bc-49b4-85b1-4c97e1e6038c"))
                .name("Sourav").age(45).build();
        customers.add(customer1);
        customers.add(customer2);
        customers.add(customer3);
    }

    @Override
    public List<Customer> getAllCustomers() {
        return customers;
    }

    @Override
    public Customer getCustomerById(UUID id) {
        return customers.stream().filter(customer -> customer.getId().equals(id)).findFirst().get();
    }
}
