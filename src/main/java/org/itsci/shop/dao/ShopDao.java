package org.itsci.shop.dao;

import org.itsci.shop.model.Product;
import org.itsci.shop.model.Shop;

import java.util.List;

public interface ShopDao {

    List<Shop> getShops();
    void saveShop(Shop shop);
    Shop getShop(int id);
    void deleteShop(int id);

    List<Shop> getShopDoesNotHaveProduct(int id);

}
