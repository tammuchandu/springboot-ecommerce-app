package com.nt.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.nt.service.ProductServiceINF;

import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;


@Controller
public class ProductController {

    @Autowired
    private ProductServiceINF service;

    @GetMapping("/products")
    public String products(Model model) {
        model.addAttribute("products", service.getAllProducts());
        return "products";
    }

    @GetMapping("/product/image/{id}")
    @ResponseBody
    public byte[] image(@PathVariable Long id) {
        return service.getProductById(id).getImage();
    }
}
