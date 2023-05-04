package com.bjpowernode.springbootssm.model;

import lombok.Data;

@Data
public class Product {
        /**
         * 商品编号
         */
        private Integer id;

        /**
         * 商品名称
         */
        private String name;

        /**
         * 价格
         */
        private Double price;

        /**
         * 库存数量
         */
        private Integer num;

        /**
         * 商品描述
         */
        private String description;
}
