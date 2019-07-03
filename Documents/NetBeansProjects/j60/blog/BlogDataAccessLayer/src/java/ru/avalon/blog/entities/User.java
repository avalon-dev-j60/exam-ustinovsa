/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ru.avalon.blog.entities;

import java.io.Serializable;
import java.util.List;
import javax.persistence.*;

@NamedQueries({
    @NamedQuery(
            name = "find-user-by-email",
            query = "SELECT u "
            + "FROM Users AS u "
            + "WHERE u.email =:email"
    )

})
@Entity(name = "Users")
public class User implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private String email;
    private String password;

    @OneToMany(cascade = {CascadeType.REMOVE,
            CascadeType.REFRESH},
            fetch = FetchType.EAGER,
            mappedBy = "author",
            targetEntity = Publication.class)
    private List<Publication> publications;

    public User() {
    }

    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public long getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
