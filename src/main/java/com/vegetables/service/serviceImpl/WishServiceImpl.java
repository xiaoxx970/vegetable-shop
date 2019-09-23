package com.vegetables.service.serviceImpl;
import com.vegetables.mapper.WishMapper;
import com.vegetables.pojo.Wish;
import com.vegetables.service.WishService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class WishServiceImpl implements WishService {
    @Autowired
    private WishMapper wishMapper;
    @Override
    public List<Wish> findAllWish(int id) {
        return wishMapper.findAllWish(id);
    }
    @Override
    public void insertWish(Wish w) {
        wishMapper.insertWish(w);
    }
    @Override
    public void delWish(int id) {
        wishMapper.delWish(id);
    }
    @Override
    public Integer findAllWishName(String name, int parntId) {
        Integer i = wishMapper.findAllWishName(name, parntId);
        return i;
    }
}
