<%-- 
    Document   : account
    Created on : 3 Apr 2023, 8:52:45 pm
    Author     : amy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style1.css"/>
    </head>
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
        <h1>Hello!</h1>
        
        <%  
            // Retrieve session attributes for the user's information
            String name = (String) session.getAttribute("name");
            String email = (String) session.getAttribute("email");
            String pword = (String) session.getAttribute("pword");
            
            if (name == null || name.isEmpty()) { %>
            <p>Please <a href="register.jsp">login or register</a> to view your account information.</p> <%
} else {

        %>
        
        <p>Welcome, <%= session.getAttribute("name") %>!</p>
        <p>Your email address is: <%= session.getAttribute("email") %></p>
        
        <!-- <a href="orders.jsp">View your current orders here </a> -->
        
        <a href="logout.jsp"> Logout </a>
        
<%
}
%>
        
    </body>
</html>
