package org.itsci.shop.service;

import org.itsci.shop.dao.CartDao;
import org.itsci.shop.dao.ProductDao;
import org.itsci.shop.model.Cart;
import org.itsci.shop.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartDao cartDao;

    @Autowired
    private ProductDao productDao;

    @Override
    @Transactional
    public List<Cart> getCarts() {
        return cartDao.getCarts();
    }

    @Override
    @Transactional
    public void saveCart(Cart cart) {
        cartDao.saveCart(cart);
    }

    @Override
    @Transactional
    public Cart getCart(int cartId) {
        return cartDao.getCart(cartId);
    }

    @Override
    @Transactional
    public void deleteCart(int cartId) {
        cartDao.deleteCart(cartId);
    }

    @Override
    @Transactional
    public void updateCart(Cart cartEntity, Cart cart) {
        cartEntity.fill(cart);
        cartDao.saveCart(cartEntity);
    }

    @Override
    @Transactional
    public void addProductToCart(int cartId, int productId) {
        Product product = productDao.getProduct(productId);
        Cart cart = cartDao.getCart(cartId);
        cart.getProducts().add(product);
        cartDao.saveCart(cart);
    }

    @Override
    @Transactional
    public void removeProductFromCart(int cartId, int productId) {
        Product product = productDao.getProduct(productId);
        Cart cart = cartDao.getCart(cartId);
        cart.getProducts().remove(product);
        cartDao.saveCart(cart);
    }

    @Override
    @Transactional
    public List<Cart> getCartDoesNotHaveProduct(int id) {
        return cartDao.getCartDoesNotHaveProduct(id);
    }
}