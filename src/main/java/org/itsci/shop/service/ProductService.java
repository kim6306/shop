package org.itsci.shop.service;

import org.itsci.shop.model.Product;
import org.itsci.shop.model.Shop;

import java.util.List;

public interface ProductService {
    List<Product> getProducts();
    List<Shop> getShopDoesNotHaveProduct(int id);
    public void saveProduct(Product product);
    Product getProduct(int productId);
    void deleteProduct(int productId);
    void updateProduct(Product productEntity, Product product);

    void addShopToProduct(int productId, int shopId);
    void removeShopFromProduct(int productId, int shopId);
}
