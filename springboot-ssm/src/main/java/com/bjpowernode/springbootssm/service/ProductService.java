package com.bjpowernode.springbootssm.service;

import com.bjpowernode.springbootssm.model.Product;

import java.util.List;

public interface ProductService {
    List<Product> qurryAllProducdt() ;
    boolean addProduct(Product product);
    boolean delProduct(Integer id);
    boolean editProduct(Product product);
}
