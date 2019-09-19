package com.vegetables.test;

import com.vegetables.pojo.Products;
import com.vegetables.pojo.Shop_List;
import com.vegetables.service.PageListService;
import com.vegetables.service.ProductsService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class tets001 {
    public static void main(String[] args) {
        ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
        PageListService pageListService = ctx.getBean("pageListServiceImpl", PageListService.class);
        System.out.println(pageListService);
        ProductsService productsService = ctx.getBean("productsServiceImpl", ProductsService.class);
        List<Products> products = productsService.SelectAllProduct();
        System.out.println(products);
        int i = pageListService.queryTotalCount();
        System.out.println(i);
        List<Shop_List> shop_lists = pageListService.queryCurrentData(0, 5);
        System.out.println(shop_lists);
    }



}
