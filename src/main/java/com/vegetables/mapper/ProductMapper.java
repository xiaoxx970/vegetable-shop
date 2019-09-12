package com.vegetables.mapper;

import com.vegetables.pojo.Products;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ProductMapper {
    @Select("select *form products")
    public List<Products> SelectAllProduct();
}
