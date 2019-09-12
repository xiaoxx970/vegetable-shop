package com.vegetables.service;

import com.vegetables.pojo.Products;
import org.springframework.stereotype.Service;

import java.util.List;


public interface ProductsService {
    public List<Products> SelectAllProduct();
}
