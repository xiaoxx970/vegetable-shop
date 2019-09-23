package com.vegetables.test;

import com.vegetables.pojo.Wish;
import com.vegetables.service.CartService;
import com.vegetables.service.WishService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test005 {
    public static void main(String[] args) {
        ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
        WishService wishService = ctx.getBean("wishServiceImpl", WishService.class);
//        Wish wish = new Wish();
//        wish.setParentId(1);
//        wish.setWName("121");
//        wish.setWPrice(1.23);
//        wish.setSrc("sadadada");
//        wishService.insertWish(wish);
//        wishService.findAllWish(1);
        Integer i = wishService.findAllWishName("121", 1);
        System.out.println(i);
//        wishService.delWish(1);
    }
}
