package org.itsci.shop.dao;

import org.itsci.shop.model.Comment;

import java.util.List;

public interface CommentDao {
    List<Comment> getComments();
    void saveComment(Comment product);
    Comment getComment(int id);

}
