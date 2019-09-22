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
        Cart cart = new Cart();
        cart.setPName("123456");
        cart.setParentId(1);
        cart.setPPrice(2.3);
        cart.setQuantity(11);
        cart.setPTotal(23.3);
        cart.setPSrc("ssadadadada");
        cartService.insertCart(cart);
        List<Cart> allCart = (List<Cart>) cartService.findAllCart(1);
        for(Cart  c: allCart){
            System.out.println(c);
        }
//        cartService.changeCart(1);
//        cartService.delCart(1);
    }
}
