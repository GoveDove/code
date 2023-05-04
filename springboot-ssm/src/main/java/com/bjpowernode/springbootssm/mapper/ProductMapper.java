package com.bjpowernode.springbootssm.mapper;

import com.bjpowernode.springbootssm.model.Product;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ProductMapper {
    /**
     * 查询全部
     * @return
     */
    @Select("select id, name, price, num, description  from product order by id")
    List<Product> qurryAllProducdt() ;

    /**
     * 增加产品
     * @param product
     * @return
     */
    @Select("insert into product(name, price, num, description)\n" +
            "values (#{product.name},#{product.price},#{product.num},#{product.description})")
    boolean addProduct(Product product);

    /**
     * 删除产品
     * @param id
     * @return
     */
    @Select("delete from product where id=#{id}")
    boolean delProduct(Integer id);

    /**
     * 修改产品
     * @param product
     * @return
     */
    @Select("update product set\n" +
            "        name = #{product.name},\n" +
            "        price = #{product.price},\n" +
            "        num = #{product.num},\n" +
            "        description = #{product.description}\n" +
            "        where id=#{product.id}")
    boolean editProduct(Product product);

}
