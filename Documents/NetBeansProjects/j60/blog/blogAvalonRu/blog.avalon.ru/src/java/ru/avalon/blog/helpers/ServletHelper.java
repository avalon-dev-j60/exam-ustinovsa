package ru.avalon.blog.helpers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public final class ServletHelper {

    private ServletHelper() {
    }

    public static void redirect(
            HttpServletRequest request,
            HttpServletResponse response,
            String location)
            throws ServletException, IOException {
        response.setHeader("Location", location);
        response.setStatus(HttpServletResponseWrapper.SC_FOUND);
    }

    public static void redirectToReferer(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String referer = request.getHeader("Referer");
        String requestURL = request.getRequestURL().toString();
        if (referer == null || referer.equals(requestURL)) {
            referer = request.getContextPath();
        }
        redirect(request, response, referer);
    }
}
