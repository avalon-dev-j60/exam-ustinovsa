package ru.avalon.blog.services;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import ru.avalon.blog.entities.User;

@Stateless
public class UserService {

    @PersistenceContext(unitName = "BlogPU")
    EntityManager emus;

    public void create(User user) {
        emus.persist(user);
        emus.flush();
    }

    public void save(User user) {
        emus.merge(user);
    }

    public User findByEmail(String email) {
        try {
            return emus.createNamedQuery("find-user-by-email", User.class)
                    .setParameter("email", email)
                    .getSingleResult();
        } catch  (NoResultException e)  {
                return null;
            }

        }
}
