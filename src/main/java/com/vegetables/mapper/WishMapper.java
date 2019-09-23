package com.vegetables.mapper;

import com.vegetables.pojo.Wish;

import java.util.List;
public interface WishMapper {
    List<Wish> findAllWish(int id);
    void insertWish(Wish w);
    void delWish(int id);
    Integer findAllWishName(String name , int parntId);
}
