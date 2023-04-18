<%-- 
    Document   : logout
    Created on : 4 Apr 2023, 12:40:16 pm
    Author     : amy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style.css"/>
    </head>
    <% 
        session.setAttribute("name", null);
        session.setAttribute("email", null);
        session.setAttribute("pword", null);
        session.setAttribute("orders", new HashMap<String, Integer>());
    %>
    <nav>
        <ul>
            <li><h2>IoT Bay</h2></li>
            <li><a href="index.html">home</a></li>
            <li><a href="products.jsp">products</a></li>
            <li><a href="register.jsp">login/register</a></li>
            <li><a href="account.jsp">account</a></li>
        </ul>   
    </nav>
    <body>
        
        <p> You have been logged out </p>
        <p><a href="register.jsp"> Click here</a> to sign in </p>
        
    </body>
</html>
