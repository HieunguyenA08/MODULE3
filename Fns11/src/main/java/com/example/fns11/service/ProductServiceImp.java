package com.example.fns11.service;

import com.example.fns11.bean.Product;
import com.example.fns11.repository.IProductRepository;
import com.example.fns11.repository.ProductRepository;
import jdk.internal.jrtfs.JrtFileSystemProvider;

import java.util.ArrayList;
import java.util.List;

import static com.example.fns11.repository.ProductRepository.productMap;

public class ProductServiceImp implements IProductService{
    // tạo đối tượng
    private static IProductRepository iProductRepository = new ProductRepository();
    @Override
    public void create(Product product) {
      iProductRepository.create(product);
    }

    @Override
    public void delete(String id) {
        iProductRepository.delete(id);
    }

    @Override
    public void update(Product product) {
        iProductRepository.update(product);
    }

    @Override
    public List<Product> findAll() {
        return iProductRepository.findAll();

    }

    @Override
    public Product findById(String id) {
        return iProductRepository.findById(id);

    }
}
