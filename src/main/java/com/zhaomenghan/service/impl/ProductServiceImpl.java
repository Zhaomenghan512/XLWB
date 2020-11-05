package com.zhaomenghan.service.impl;

import com.zhaomenghan.dao.ProductDao;
import com.zhaomenghan.domain.Product;
import com.zhaomenghan.domain.Type;
import com.zhaomenghan.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductDao dao;
    @Override
    public Product selectProductById(Integer id) {
        return dao.selectProductById(id);
    }

    @Override
    public List<Product> selectProductByType(Type type) {
        return dao.selectProductByType(type);
    }

    @Override
    public Integer insertProduct(Product product) {
        return dao.insertProduct(product);
    }

    @Override
    public Integer updateProduct(Product product) {
        return dao.updateProductByBean(product);
    }

    @Override
    public Integer deleteProduct(Integer id) {
        return dao.deleteProductById(id);
    }

    @Override
    public List<Product> selectAllProduct() {
        return dao.selectAllProduct();
    }
}
