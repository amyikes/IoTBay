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


public class DeleteUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve the user ID from the request parameter
        String userId = request.getParameter("userId");
        
        // Delete the user from the database or backend service
        //this will need updating
//        userService.deleteUser(userId);
        
        // Redirect the user to the manage.jsp page or any other appropriate page
        response.sendRedirect("manage.jsp");
    }
}
