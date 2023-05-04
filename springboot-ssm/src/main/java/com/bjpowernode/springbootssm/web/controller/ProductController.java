package com.bjpowernode.springbootssm.web.controller;

import com.bjpowernode.springbootssm.model.Product;
import com.bjpowernode.springbootssm.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class ProductController {

    @Resource
    private ProductService productService;

    @RequestMapping("product.do")
    public ModelAndView getProducts(ModelAndView modelAndView) {
//        List<Product> productList = productService.qurryAllProducdt();
//        modelAndView.addObject("products",productList);
        modelAndView.setViewName("product");
        return modelAndView;
    }

    @GetMapping("qurryAllProducdt")
    public List<Product> qurryAll() {
        return productService.qurryAllProducdt();
    }

    @GetMapping("addProduct")
    public boolean add(Product product) {
        return productService.addProduct(product);
    }

    @GetMapping("delProduct")
    public boolean del(Integer id) {
        return productService.delProduct(id);
    }

    @GetMapping("editProduct")
    public boolean edit(Product product) {
        return productService.editProduct(product);
    }

    @GetMapping(value = "jsp")
    public ModelAndView jsp(ModelAndView model) {
        model.setViewName("index");
        return model;
    }

}
