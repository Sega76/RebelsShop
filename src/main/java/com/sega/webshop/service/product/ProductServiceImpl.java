package com.sega.webshop.service.product;

import com.sega.webshop.dao.product.CategoryDao;
import com.sega.webshop.dao.product.ProductDao;
import com.sega.webshop.model.product.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("productService")
@Transactional
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao productDao;

    @Autowired
    private CategoryDao categoryDao;

    public Product findById(int id) {
        return productDao.findById(id);
    }

    public void addProduct(Product product) {
        productDao.addProduct(product);
    }

    public void updateProduct(Product product) {
        productDao.updateProduct(product);
    }

    public List<Product> listOfProducts() {
        return productDao.listOfProducts();
    }

    public List<Product> findByCategory(String category) {
        return productDao.findByCategory(categoryDao.getByName(category).getId());
    }

    public void removeProduct(Product product) { productDao.removeProduct(product);
    }
}
