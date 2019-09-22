package com.vegetables.mapper;

import com.vegetables.pojo.Cart;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CartMapper {
    List<Cart> findAllCart(int id);
    void insertCart(Cart c);
    void changeCart(int id);
    void delCart(int id);
}
