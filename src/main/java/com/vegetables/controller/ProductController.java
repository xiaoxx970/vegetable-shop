package com.vegetables.controller;

import com.vegetables.pojo.Products;
import com.vegetables.service.ProductsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/selectProduct")
public class ProductController {
    @Autowired
    private ProductsService productsService;
    @RequestMapping("/selectAllProduct")
    public String SelectAllProduct(Model model){
        List<Products> products = productsService.SelectAllProduct();
        System.out.println(products);
        model.addAttribute("products",products);
        return "index";
    }
}
