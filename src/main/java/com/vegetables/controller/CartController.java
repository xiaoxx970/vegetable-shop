package com.vegetables.controller;

import com.sun.javaws.IconUtil;
import com.vegetables.pojo.Cart;
import com.vegetables.pojo.User;
import com.vegetables.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;
@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    private CartService cartService;
    @RequestMapping("/findAllCart")
    public String findAllCart(HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");
        int userid = user.getUserid();
        List<Cart> allCart = cartService.findAllCart(userid);
        model.addAttribute("cart", allCart);
        System.out.println(allCart);
        return "shop_cart";
    }
    @RequestMapping("/insertCart")
    @ResponseBody
    public  void insertCart(HttpSession session,Cart c){
        System.out.println(c);
        User user = (User) session.getAttribute("user");
        int userid = user.getUserid();
        System.out.println(userid);
        c.setParentId(userid);
        Integer i = cartService.findAllCartName(c.getPName(), c.getParentId());
        System.out.println(i);
        if(i != null){
            cartService.changeCart(i);
        }else {
            c.setQuantity(1);
            System.out.println(c.getQuantity());
            c.setPTotal(c.getPPrice());
            cartService.insertCart(c);
        }
    }
    @RequestMapping("/delCart")
    public String delCart(Integer cartId){
        System.out.println(cartId) ;
        cartService.delCart(cartId);
        return "redirect:/cart/findAllCart";
    }
}
