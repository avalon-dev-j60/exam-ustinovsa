package ru.avalon.blog.services;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import ru.avalon.blog.entities.User;

@Stateless
public class UserService {

    @PersistenceContext(unitName = "BlogPU")
    EntityManager em;

    public void create(User user) {
        em.persist(user);
        em.flush();
    }

    public void save(User user) {
        em.merge(user);
    }

    public User findByEmail(String email) {
        try {
            return em.createNamedQuery("find-user-by-email", User.class)
                    .setParameter("email", email)
                    .getSingleResult();
        } catch  (NoResultException e)  {
                return null;
            }

        }
}
