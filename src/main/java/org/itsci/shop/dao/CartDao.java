package org.itsci.shop.dao;

import org.itsci.shop.model.Cart;

import java.util.List;

public interface CartDao {
    List<Cart> getCarts();

    void saveCart(Cart cart);

    Cart getCart(int id);

    void deleteCart(int id);

    List<Cart> getCartDoesNotHaveProduct(int id);
}
