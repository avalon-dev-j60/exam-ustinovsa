package ru.avalon.blog.servlets;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.inject.Inject;
import javax.naming.AuthenticationException;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import ru.avalon.blog.entities.*;
import ru.avalon.blog.exceptions.*;
import ru.avalon.blog.helpers.*;
import ru.avalon.blog.services.*;
import static ru.avalon.blog.servlets.RegistrationServlet.JSP;

@WebServlet("/publication")
public class PublicationServlet extends HttpServlet {

    public static final String PUBLICATION = "/WEB-INF/pages/content/publication.jsp";
    

    @Inject
    AuthService authService;

    @Inject
    PublicateService publicateService;

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        if (authService.isSignedIn()) {
            request.getRequestDispatcher(PUBLICATION).forward(request, response);
        } else {
            ServletHelper.redirect(request, response,
                    request.getContextPath() + "/login");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("publicationTitle");
        String content = request.getParameter("content");
        try {
            User author = authService.getUser();
            publicateService.create(author, title, content);
            ServletHelper.redirect(request, response, request.getContextPath());
        } catch (RequiredDataException | DataIntegrityViolationException e) {
            request.setAttribute("error", e.getMessage());
            doGet(request, response);
        } catch (AuthenticationException e) {
            request.setAttribute("error", e.getMessage());
            doGet(request, response);
        }

    }

}
