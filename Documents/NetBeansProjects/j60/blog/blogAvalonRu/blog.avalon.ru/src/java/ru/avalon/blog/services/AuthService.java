/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ru.avalon.blog.services;

import javax.ejb.*;
import javax.inject.Inject;
import javax.naming.AuthenticationException;
import javax.servlet.http.HttpSession;
import ru.avalon.blog.entities.User;
import ru.avalon.blog.exceptions.DataIntegrityViolationException;
import ru.avalon.blog.exceptions.RequiredDataException;

/**
 *
 * @author JAVA
 */
@Stateless
public class AuthService {

    @EJB
    UserService userService;

    @Inject
    HttpSession session;

    public void signIn(String email, String password) throws AuthenticationException {
        User user = userService.findByEmail(email);
        if (user == null) {
            throw new AuthenticationException("User not found!");
        } else if (!password.equals(user.getPassword())) {
            throw new AuthenticationException("Incorrect password!");
        } else {
            session.setAttribute("user", email);
        }
    }

    public boolean isSignedIn() {
        return session.getAttribute("user") != null;
    }

    public void signOut() {
        session.invalidate();
    }

    public User getUser() throws AuthenticationException {
        String email = (String) session.getAttribute("user");
        if (email != null) {
            return userService.findByEmail(email);
        }
        throw new AuthenticationException("User not signed in");
    }

    public void register(String email, String password, String confirmation)
            throws RequiredDataException, DataIntegrityViolationException {
        
        User user = userService.findByEmail(email);
        
        if (email == null || email.trim().isEmpty()) {
            throw new RequiredDataException("Email is required");
        } else if (password == null || password.trim().isEmpty()) {
            throw new RequiredDataException("Password is required");
        } else if (confirmation == null || confirmation.trim().isEmpty()) {
            throw new RequiredDataException("Password confirmation is required");
        } else if (!password.equals(confirmation)) {
            throw new DataIntegrityViolationException("Password doesn't match confirmation");
        } else if (user!=null) {
            throw new DataIntegrityViolationException("User alredy exist");
        }
        
        user = new User(email, password);
        
        userService.create(user);
    }
    
    public void changePassword (String password,
            String newPassword,
            String confirmation) throws RequiredDataException, DataIntegrityViolationException, AuthenticationException{
       User user = getUser();
        
        if (password == null || password.trim().isEmpty()) {
            throw new RequiredDataException("Current password is required");
        } else if (newPassword == null || newPassword.trim().isEmpty()) {
            throw new RequiredDataException("New password is required");
        } else if (newPassword.equals(password)){
            throw new DataIntegrityViolationException("New password shouldn't equals old");
        } else if (confirmation == null || confirmation.trim().isEmpty()) {
            throw new RequiredDataException("New password confirmation is required");
        } else if (!password.equals(confirmation)) {
            throw new DataIntegrityViolationException("New password doesn't match confirmation");
        }
        
        user.setPassword(newPassword);
        
        userService.save(user);
        
    }
}
