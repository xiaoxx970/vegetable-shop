package com.vegetables.service.serviceImpl;

import com.vegetables.mapper.ProductMapper;
import com.vegetables.pojo.Products;
import com.vegetables.service.ProductsService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class ProductsServiceImpl implements ProductsService {
    @Autowired
    private ProductMapper productMapper;
    @Override
    public List<Products> SelectAllProduct() {
        List<Products> products = productMapper.SelectAllProduct();
        return products;
    }
}
