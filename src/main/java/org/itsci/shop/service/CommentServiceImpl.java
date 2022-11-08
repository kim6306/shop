package org.itsci.shop.service;

import org.itsci.shop.dao.CategoryDao;
import org.itsci.shop.dao.CommentDao;
import org.itsci.shop.dao.ShopDao;
import org.itsci.shop.model.Category;
import org.itsci.shop.model.Comment;
import org.itsci.shop.model.Shop;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentDao commentDao;

    @Autowired
    private ShopDao shopDao;

    @Autowired
    private CategoryDao categoryDao;

    @Override
    @Transactional
    public List<Comment> getComments() {
        return commentDao.getComments();
    }

    @Override
    @Transactional
    public void saveComment(Comment comment) {
        commentDao.saveComment(comment);
    }

    @Override
    @Transactional
    public Comment getComment(int commentId) {
        return commentDao.getComment(commentId);
    }

//    @Override
//    @Transactional
//    public void deleteComment(int commentId) {
//        commentDao.deleteComment(commentId);
//    }

    @Override
    @Transactional
    public void updateComment(Comment commentEntity, Comment comment) {
        commentEntity.fill(comment);
        saveComment(commentEntity);
    }

}