package com.nt.service;

import com.nt.model.Product;
import java.util.List;

public interface ProductServiceINF {
    List<Product> getAllProducts();
    Product getProductById(Long id);
}
