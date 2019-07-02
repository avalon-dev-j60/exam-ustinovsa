/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ru.avalon.blog.servlets;

import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ru.avalon.blog.exceptions.DataIntegrityViolationException;
import ru.avalon.blog.exceptions.RequiredDataException;
import ru.avalon.blog.helpers.ServletHelper;
import ru.avalon.blog.services.AuthService;

/**
 *
 * @author JAVA
 */
@WebServlet("/registration")
public class RegistrationServlet extends HttpServlet {

    public static final String JSP = "/WEB-INF/pages/auth/registration.jsp";

    @Inject
    AuthService authService;

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        if (authService.isSignedIn()) {
            ServletHelper.redirectToReferer(request, response);
        } else {
            request.getRequestDispatcher(JSP).forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmation = request.getParameter("confirmation");
        try {
            authService.register(email, password, confirmation);
            ServletHelper.redirect(request, response, request.getContextPath() + "/login");
        } catch (RequiredDataException | DataIntegrityViolationException e) {
            request.setAttribute("error", e.getMessage());
            doGet(request, response);
        }
        
    }
}
