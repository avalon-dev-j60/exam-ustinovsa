/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ru.avalon.blog.servlets;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.inject.Inject;
import javax.naming.AuthenticationException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ru.avalon.blog.entities.User;
import ru.avalon.blog.exceptions.DataIntegrityViolationException;
import ru.avalon.blog.exceptions.RequiredDataException;
import ru.avalon.blog.helpers.ServletHelper;
import ru.avalon.blog.services.AuthService;
import static ru.avalon.blog.servlets.RegistrationServlet.JSP;

/**
 *
 * @author Home
 */
@WebServlet("/passwordChange")
public class PasswordChangeServlet extends HttpServlet {

    public static final String JSP = "/WEB-INF/pages/auth/passwordChange.jsp";

    @Inject
    AuthService authService;

    @Override

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        if (!authService.isSignedIn()) {
            ServletHelper.redirectToReferer(request, response);
        } else {
            request.getRequestDispatcher(JSP).forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String password = request.getParameter("password");
        String newPassword = request.getParameter("newPassword");
        String confirmation = request.getParameter("confirmation");
        try {
            User user = authService.getUser();
            authService.changePassword(password, newPassword, confirmation);
            ServletHelper.redirect(request, response, request.getContextPath() + "/login");
        } catch (RequiredDataException | DataIntegrityViolationException | AuthenticationException e) {
            e.getMessage();
            request.setAttribute("error", e.getMessage());
            doGet(request, response);

        }
    }
}
