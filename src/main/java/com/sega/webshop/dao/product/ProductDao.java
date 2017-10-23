package com.sega.webshop.dao.product;

import com.sega.webshop.model.product.Product;

import java.util.List;

public interface ProductDao {

    Product findById(int id);
    void addProduct(Product product);
    void updateProduct(Product product);
    List<Product> listOfProducts();
    List<Product> findByCategory(Integer category);
    void removeProduct(Product product);

}
