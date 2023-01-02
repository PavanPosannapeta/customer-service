package com.example.customerservice.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CustomerController {


    @GetMapping("/addCustomer")
    public String welcomeMessage(){
        return "Customer added!!";
    }
}
