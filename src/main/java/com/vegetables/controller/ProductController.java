package com.vegetables.controller;

import com.vegetables.pojo.Products;
import com.vegetables.service.ProductsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/selectProduct")
public class ProductController {
    @Autowired
    private ProductsService productsService;
    @RequestMapping("/selectAllProduct")
    public String SelectAllProduct(){
        List<Products> products = productsService.SelectAllProduct();
        return "";
    }
}
