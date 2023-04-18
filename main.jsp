<%-- 
    Document   : main
    Created on : 3 Apr 2023, 10:37:19 am
    Author     : amy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <% 
        boolean account = false;
    %>
    <head>
        <title>Prototype</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <<header>
        <h2>IoT Bay</h2>
    </header>
    <nav>
        <a href="products.jsp">products</a>
        <a href="register.jsp">login/register</a>
        <% 
            if (account) {
        %>
        <a href="account.jsp">account</a>
        <% } %>
    <body>
        <h1> IoT Bay</h1>
        <p>Welcome to IoT
        <div>TODO write content</div>
    </body>
</html>
