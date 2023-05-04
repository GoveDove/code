package com.bjpowernode.springbootssm.service;

import com.bjpowernode.springbootssm.mapper.ProductMapper;
import com.bjpowernode.springbootssm.model.Product;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService{
    @Resource
    private ProductMapper productMapper;
    @Override
    public List<Product> qurryAllProducdt() {
        return productMapper.qurryAllProducdt();
    }

    @Override
    public boolean addProduct(Product product) {
        return productMapper.addProduct(product);
    }

    @Override
    public boolean delProduct(Integer id) {
        return productMapper.delProduct(id);
    }

    @Override
    public boolean editProduct(Product product) {
        return productMapper.editProduct(product);
    }
}
