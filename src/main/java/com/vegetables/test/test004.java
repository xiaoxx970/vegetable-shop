package com.vegetables.test;

import com.vegetables.pojo.Cart;
import com.vegetables.service.CartService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class test004 {
    public static void main(String[] args) {
        ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
        CartService cartService = ctx.getBean("cartServiceImpl", CartService.class);
        Integer i = cartService.findAllCartName("Onion", 1);
        System.out.println(i);
    }
}
