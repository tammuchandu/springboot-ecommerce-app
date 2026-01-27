package com.nt.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;

import com.nt.model.Address;
import com.nt.model.User;
import com.nt.service.AddressServiceINF;

import jakarta.servlet.http.HttpSession;

@Controller
public class AddressController {

    @Autowired
    private AddressServiceINF service;

    @GetMapping("/order")
    public String order() {
        return "address";
    }

    @PostMapping("/order")
    public String placeOrder(Address address, HttpSession session, Model model) {

        User user = (User) session.getAttribute("user"); // get logged-in user
        if(user == null){
            model.addAttribute("error", "Please login first");
            return "login";
        }

        service.saveAddress(address, user);
        model.addAttribute("msg", "Order delivered in 10 minutes");
        return "order-success";
    }

}
