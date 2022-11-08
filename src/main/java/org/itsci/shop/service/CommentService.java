package org.itsci.shop.service;

import org.itsci.shop.model.Comment;

import java.util.List;

public interface CommentService {
    List<Comment> getComments();
    public void saveComment(Comment comment);
    Comment getComment(int commentId);
    void updateComment(Comment commentEntity, Comment comment);
}
