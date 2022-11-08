package org.itsci.shop.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.itsci.shop.model.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CommentDaoImpl implements CommentDao {
    @Autowired
    private SessionFactory sessionFactory;
    @Override
    public List<Comment> getComments() {
        Session session = sessionFactory.getCurrentSession();
        Query<Comment> query = session.createQuery("from Comment", Comment.class);
        List<Comment> comments = query.getResultList();
        return comments;
    }
    @Override
    public void saveComment(Comment comment) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(comment);
    }
    @Override
    public Comment getComment(int commentId) {
        Session session = sessionFactory.getCurrentSession();
        Comment comment = session.get(Comment.class, commentId);
        return comment;
    }

}
