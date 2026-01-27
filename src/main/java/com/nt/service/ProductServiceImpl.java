package com.nt.service;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;
import com.nt.model.Product;
import com.nt.repo.ProductRepoINF;

@Service
public class ProductServiceImpl implements ProductServiceINF {

    @Autowired
    private ProductRepoINF repo;

    @Override
    public List<Product> getAllProducts() {
        return repo.findAll();
    }

    @Override
    public Product getProductById(Long id) {
        return repo.findById(id).orElse(null);
    }
}
