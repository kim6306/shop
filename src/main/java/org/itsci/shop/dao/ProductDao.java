package org.itsci.shop.dao;

import org.itsci.shop.model.Product;
import org.itsci.shop.model.Shop;

import java.util.List;

public interface ProductDao {
    List<Product> getProducts();
    void saveProduct(Product product);
    Product getProduct(int id);
    void deleteProduct(int id);

    List<Product> getProductDoesNotHaveShop(int id);
    List<Product> getProductDoesNotHaveCart(int id);
}
