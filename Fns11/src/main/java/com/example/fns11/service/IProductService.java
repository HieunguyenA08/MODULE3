package com.example.fns11.service;

import com.example.fns11.bean.Product;

import java.util.List;

public interface IProductService {
    void create(Product product);
    void delete(String id);
    void update(Product product);
    List<Product> findAll();
    Product findById(String id);
}
