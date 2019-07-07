package ru.avalon.blog.services;

import javax.ejb.*;
import javax.inject.Inject;
import javax.naming.AuthenticationException;
import javax.servlet.http.HttpSession;
import ru.avalon.blog.entities.Publication;
import ru.avalon.blog.entities.User;
import ru.avalon.blog.exceptions.DataIntegrityViolationException;
import ru.avalon.blog.exceptions.RequiredDataException;

@Stateless
public class PublicateService {

    @EJB
    PublicationService publicationService;

    @Inject
    AuthService authService;

    @Inject
    HttpSession session;

    public void create(User author, String title, String content)
            throws RequiredDataException, DataIntegrityViolationException {
        if (authService.isSignedIn()) {
            Publication publication = publicationService.findByTitle(title);
            if (title == null || title.trim().isEmpty()) {
                throw new RequiredDataException(
                        "error.title.required");
            } else if (publication != null) {
                throw new DataIntegrityViolationException(
                        "error.publication.duplicated");
            }

            publication = new Publication(author, title, content);

            publicationService.create(publication);

        }
    }

    public boolean isExist() {
        String title = (String) session.getAttribute("publicationTitle");

        return publicationService.findByTitle(title) != null;
    }

    public void changePublication(User author, String title, String newContent) throws RequiredDataException, DataIntegrityViolationException, AuthenticationException {

        if (!authService.isSignedIn()) {
            Publication publication = publicationService.findByTitle(title);
            if (!author.equals(publication.getAuthor())) {
                throw new DataIntegrityViolationException("error.publication.user-isnt-author");
            }
            publication.setContent(newContent);
            publication.setEditedAt();
            publicationService.save(publication);
        }
    }



}
