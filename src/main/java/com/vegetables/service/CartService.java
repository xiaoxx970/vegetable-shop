package com.vegetables.service;
import com.vegetables.pojo.Cart;

import java.util.List;

public interface CartService {
    List<Cart> findAllCart(int id);
    void insertCart(Cart c);
    void changeCart(int id);
    void delCart(int id);
}
