package com.vegetables.controller;

import com.vegetables.pojo.Cart;
import com.vegetables.pojo.User;
import com.vegetables.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    private CartService cartService;
    @RequestMapping("/findAllCart")
    public String findAllCart(HttpSession session, Model model){
        User user =(User) session.getAttribute("user");
        int userid = user.getUserid();
        List<Cart> allCart = cartService.findAllCart(userid);
        model.addAttribute("cart",allCart);
        System.out.println(allCart);
        return "shop_cart";
    }
}
