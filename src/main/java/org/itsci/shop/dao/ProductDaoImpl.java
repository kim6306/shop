package org.itsci.shop.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.itsci.shop.model.Product;
import org.itsci.shop.model.Shop;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProductDaoImpl implements ProductDao{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Product> getProducts() {
        Session session = sessionFactory.getCurrentSession();
        Query<Product> query = session.createQuery("from Product", Product.class);
        List<Product> products = query.getResultList();
        return products;
    }

    @Override
    public void saveProduct(Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
    }
    @Override
    public Product getProduct(int id) {
        Session session = sessionFactory.getCurrentSession();
        Product product = session.get(Product.class, id);
        return product;
    }
    @Override
    public void deleteProduct(int productId) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("delete from Product where id =:productId ");
        query.setParameter("productId", productId);
        query.executeUpdate();
    }

    @Override
    public List<Shop> getShopDoesNotHaveProduct(int id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Shop> query = session.createQuery("select d.shops from Product d where d.id=:id");
        query.setParameter("id", id);
        List<Shop> shops1 = query.getResultList();
        query = session.createQuery("from Shop");
        List<Shop> shops2 = query.getResultList();
        shops2.removeAll(shops1);
        return shops2;
    }
}