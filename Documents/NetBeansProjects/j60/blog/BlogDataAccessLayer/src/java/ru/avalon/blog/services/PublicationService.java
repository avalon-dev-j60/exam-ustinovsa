package ru.avalon.blog.services;

import java.util.List;
import javax.ejb.*;
import javax.inject.Inject;
import javax.persistence.*;
import javax.servlet.http.HttpSession;
import ru.avalon.blog.entities.*;

@Stateless
public class PublicationService {
   
    @PersistenceContext(unitName = "BlogPU")
    EntityManager emps;
    
    @EJB
    UserService userService;
    
    @Inject
    HttpSession session;
    
    public void create(Publication publication) {
        emps.persist(publication);
        emps.flush();
    }

    public void save(Publication publication) {
        emps.merge(publication);
    }
    
    public Publication findByTitle(String title) {
        try {
            return emps.createNamedQuery("find-publication-by-title", Publication.class)
                    .setParameter("publicationTitle", title)
                    .getSingleResult();
        } catch  (NoResultException e)  {
                return null;
            }

        }
}
