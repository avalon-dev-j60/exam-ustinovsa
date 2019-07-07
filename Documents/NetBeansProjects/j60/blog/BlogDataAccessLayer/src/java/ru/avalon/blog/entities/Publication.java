package ru.avalon.blog.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@NamedQueries({
    @NamedQuery(
            name = "find-publication-by-title",
            query = "SELECT p "
            + "FROM Publications AS p "
            + "WHERE p.title =:publicationTitle"
    )

})
@Entity(name = "Publications")
public class Publication implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(nullable = false)
    private String title;

    @Column(columnDefinition = "LONG VARCHAR")
    private String content;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(nullable = false)
    private Date createdAt;

    @Temporal(TemporalType.TIMESTAMP)
    private Date editedAt;

    @ManyToOne
    @JoinColumn(nullable = false)
    private User author;

    public long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public Date getEditedAt() {
        return editedAt;
    }

    public User getAuthor() {
        return author;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setEditedAt(Date editedAt) {
        this.editedAt = editedAt;
    }

    public Publication(User author, String title, String content) {
        this.author = author;
        this.title = title;
        this.createdAt = new Date();
        this.content = content;
    }

    public Publication() {
    }

}
