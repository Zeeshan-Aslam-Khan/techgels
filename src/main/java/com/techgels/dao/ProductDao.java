package com.techgels.dao;

import com.techgels.model.Product;
import java.util.List;

public interface ProductDao {
    void addProduct(Product product);
    void updateProduct(Product product);
    Product getProductById(int id);
    List<Product> getAllProducts();
    void deleteProduct(int id);
}
