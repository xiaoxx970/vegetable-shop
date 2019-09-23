package com.vegetables.service.serviceImpl;

import com.vegetables.mapper.CartMapper;
import com.vegetables.pojo.Cart;
import com.vegetables.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CartServiceImpl implements CartService {
    @Autowired
    private CartMapper cartMapper;
    @Override
    public List<Cart> findAllCart(int id) {
        return cartMapper.findAllCart( id);
    }

    @Override
    public void insertCart(Cart c) {
        cartMapper.insertCart(c);
    }

    @Override
    public void changeCart(int id) {
        cartMapper.changeCart(id);
    }

    @Override
    public void delCart(int id) {
        cartMapper.delCart(id);
    }

    @Override
    public Integer  findAllCartName(String name , int parentId) {
        boolean flag = false;
        Integer i = cartMapper.findAllCartName(name, parentId);
        return i;
    }
}
