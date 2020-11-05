package com.zhaomenghan.dao;

import com.zhaomenghan.domain.Product;
import com.zhaomenghan.domain.Type;
import org.springframework.stereotype.Component;

import java.util.List;
@Component
public interface ProductDao {
    /**
     * 添加产品
     * @param product
     * @return
     */
    Integer insertProduct(Product product);

    /**
     * 通过ID查询产品
     * @param id
     * @return
     */
    Product selectProductById(Integer id);

    /**
     * 通过类型查询
     * @param type
     * @return
     */
    List<Product> selectProductByType(Type type);

    /**
     * 通过ID删除产品
     * @param id
     */
    Integer deleteProductById(Integer id);

    /**
     * 修改产品
     * @param product
     * @return
     */
    Integer updateProductByBean(Product product);

    /**
     * 查询所有产品
     * @return
     */
    List<Product> selectAllProduct();
}
