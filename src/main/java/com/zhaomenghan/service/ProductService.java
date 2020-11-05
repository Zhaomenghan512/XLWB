package com.zhaomenghan.service;

import com.zhaomenghan.domain.Product;
import com.zhaomenghan.domain.Type;

import java.util.List;

public interface ProductService {
    /**
     * 通过ID查询产品
     * @param id
     * @return
     */
    Product selectProductById(Integer id);

    /**
     * 通过类型查询产品
     * @param type
     * @return
     */
    List<Product> selectProductByType(Type type);

    /**
     * 添加产品
     * @param product
     * @return
     */
    Integer insertProduct(Product product);

    /**
     * 更新产品
     * @param product
     * @return
     */
    Integer updateProduct(Product product);

    /**
     * 通过ID删除产品
     * @param id
     * @return
     */
    Integer deleteProduct(Integer id);

    /**
     * 查询所有产品
     * @return
     */
    List<Product> selectAllProduct();
}
