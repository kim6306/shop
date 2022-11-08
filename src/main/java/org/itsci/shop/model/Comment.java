package org.itsci.shop.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "comments")
public class Comment {
    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @GenericGenerator(name = "increment", strategy = "increment")
    int id;
    @Column(name = "name", nullable = false)
    private String name;
    @Column(name = "comment", nullable = false)
    private String comment;

    private String email ;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void fill (Comment comment) {
        this.name = comment.getName();
        this.email = comment.getEmail();
        this.comment = comment.getComment();
    }
}
