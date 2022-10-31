package org.itsci.shop.service;

import org.itsci.shop.model.Product;
import org.itsci.shop.model.Shop;

import java.util.List;

public interface ShopService {
    List<Shop> getShops();
    List<Product> getProductDoesNotHaveShop(int id);
    public void saveShop(Shop shop);

    Shop getShop(int ShopId);
    void deleteShop(int ShopId);
    void updateShop(Shop ShopEntity, Shop shop);
    void addProductToShop( int shopId,int productId);

    void removeProductFromShop(int productId,int shopId );
}
