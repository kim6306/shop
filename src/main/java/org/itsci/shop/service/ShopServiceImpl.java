package org.itsci.shop.service;

import org.itsci.shop.dao.CategoryDao;
import org.itsci.shop.dao.ProductDao;
import org.itsci.shop.dao.ShopDao;
import org.itsci.shop.model.Category;
import org.itsci.shop.model.Product;
import org.itsci.shop.model.Shop;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class ShopServiceImpl implements ShopService{

    @Autowired
    private ShopDao shopDao;

    @Autowired
    private ProductDao productDao;
    @Autowired
    private CategoryDao categoryDao;

    @Override
    @Transactional
    public List<Shop> getShops() {
        return shopDao.getShops();
    }

    @Override
    @Transactional
    public void saveShop(Shop shop) {
        shopDao.saveShop(shop);
    }

    @Override
    @Transactional
    public Shop getShop(int ShopId) {
        return shopDao.getShop(ShopId);
    }

    @Override
    @Transactional
    public void deleteShop(int ShopId) {
        shopDao.deleteShop(ShopId);
    }

    @Override
    @Transactional
    public void updateShop(Shop shopEntity, Shop shop) {
        shopEntity.fill(shop);
        shopDao.saveShop(shopEntity);
    }


    @Override
    @Transactional
    public List<Product> getProductDoesNotHaveShop(int id) {
        return shopDao.getProductDoesNotHaveShop(id);
    }

    @Override
    @Transactional
    public void addProductToShop(int shopId , int productId) {
        Shop shop = shopDao.getShop(shopId);
        Product product = productDao.getProduct(productId);
        product.getShops().add(shop);
        productDao.saveProduct(product);
    }

    @Override
    @Transactional
    public void removeProductFromShop(int shopId, int productId) {
        Shop shop = shopDao.getShop(shopId);
        Product product = productDao.getProduct(productId);
        product.getShops().remove(shop);
        productDao.saveProduct(product);
    }

}
