package org.itsci.shop.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.itsci.shop.model.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CartDaoImpl implements CartDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Cart> getCarts() {
        Session session = sessionFactory.getCurrentSession();
        Query<Cart> query = session.createQuery("FROM Cart", Cart.class);
        List<Cart> carts = query.getResultList();
        return carts;
    }

    @Override
    public void saveCart(Cart cart) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cart);
    }

    @Override
    public Cart getCart(int cartId) {
        Session session = sessionFactory.getCurrentSession();
        Cart cart = session.get(Cart.class, cartId);
        return cart;
    }

    @Override
    public void deleteCart(int cartId) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("delete from Cart where id=:cartId");
        query.setParameter("cartId", cartId);
        query.executeUpdate();
    }

    @Override
    public List<Cart> getCartDoesNotHaveProduct(int id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Cart> query = session.createQuery("select p.carts from Product p where p.id=:id");
        query.setParameter("id", id);
        List<Cart> cartList1 = query.getResultList();
        query = session.createQuery("from Cart");
        List<Cart> cartList2 = query.getResultList();
        cartList2.removeAll(cartList1);
        return cartList2;
    }
}
