package controller;

 
import java.io.IOException;
import java.sql.SQLException;

import java.util.logging.Level;

import java.util.logging.Logger;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;

import jakarta.servlet.http.HttpServletRequest;

import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.http.HttpSession;
import java.sql.Connection;

import model.User;

import dao.DBManager;
import jakarta.servlet.annotation.WebServlet;


public class EditUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve the user ID and updated details from the request parameters
        String userId = request.getParameter("userId");
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        // Retrieve more updated fields as necessary
        
        // Update the user information in the database or backend service
        //needs to be fixed here!!!!!
//        userService.updateUser(userId, fullName, email);
        // Update more user fields as necessary
        
        // Redirect the user to the manage.jsp page or any other appropriate page
        response.sendRedirect("manage.jsp");
    }
}
