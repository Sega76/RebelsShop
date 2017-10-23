package com.sega.webshop.service.product;

import com.sega.webshop.model.product.Product;

import java.util.List;

public interface ProductService {

    Product findById(int id);
    void addProduct(Product product);
    void updateProduct(Product product);
    List<Product> listOfProducts();
    List<Product> findByCategory(String category);
    void removeProduct(Product product);
}
