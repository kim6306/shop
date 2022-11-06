package org.itsci.shop.service;

import org.itsci.shop.model.Cart;

import java.util.List;

public interface CartService {
    List<Cart> getCarts();

    void saveCart(Cart cart);

    Cart getCart(int cartId);

    void deleteCart(int cartId);

    void updateCart(Cart cartEntity, Cart cart);

    void addProductToCart(int cartId, int productId);

    void removeProductFromCart(int cartId, int productId);

    List<Cart> getCartDoesNotHaveProduct(int id);
}