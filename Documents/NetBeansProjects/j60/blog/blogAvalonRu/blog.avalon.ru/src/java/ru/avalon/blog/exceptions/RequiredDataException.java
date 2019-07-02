/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ru.avalon.blog.exceptions;

/**
 *
 * @author JAVA
 */
public class RequiredDataException extends Exception {

    public RequiredDataException() {
    }

    public RequiredDataException(String string) {
        super(string);
    }
    
}
