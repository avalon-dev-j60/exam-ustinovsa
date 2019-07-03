package ru.avalon.blog.services;

import java.util.List;
import javax.ejb.*;
import javax.persistence.*;
import ru.avalon.blog.entities.*;

@Stateless
public class PublicationService {
   
    @PersistenceContext(unitName = "BlogPU")
    EntityManager em;
    
    public void create(Publication publication) {
        em.persist(publication);
        em.flush();
    }

    public void save(Publication publication) {
        em.merge(publication);
    }
    
}
