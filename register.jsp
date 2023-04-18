<%-- 
    Document   : register
    Created on : 3 Apr 2023, 7:13:15 pm
    Author     : amy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register/Login</title>
        <link rel="stylesheet" href="style.css"/>
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
        <h1>Registration</h1>
        
        
        <%  
            // Retrieve session attributes for the user's information
            String done = (String) session.getAttribute("name");
            if (done != null) { 
            if (!done.isEmpty()) {
            
        %>
        <p> You have already registered an account. Access your account details <a href="account.jsp">here</a>.</p>
        
        <% }} else { %>
        
        <form action="" action="account.jsp" method="post">
            <% String acc = request.getParameter("acc");
               if (!"submitted".equals(acc)) { %>
   
            <input type="hidden" id="acc" name="acc" value="submitted">

            <label for="email">Email:</label><br>
            <input type="text" id="email" name="email" required><br>

            <label for="name">Name:</label><br>
            <input type="text" id="name" name="name" required><br>

            <label for="pword">Password:</label><br>
            <input type="password" id="pword" name="pword" required><br>

            <label for="tos">Terms of Service:</label><br>
            <input type="checkbox" id="tos" name="tos" value="accept"><br>

            <input type="submit" value="Register">
        </form>

        <% } else {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String pword = request.getParameter("pword");
            boolean ytos = request.getParameter("tos") != null && request.getParameter("tos").equals("accept");

            if (!ytos) { %>
                <p> Please return to the registration form and agree to the terms of service </p>
                <button onclick="history.go(-1)"> return to registration form </button>
            <% } else { 
                session.setAttribute("name", name);
                session.setAttribute("email", email);
                session.setAttribute("pword", pword);
             %>
                <h1>welcome!</h1> 
                <p>form submitted</p>
                <p> your name is <%= name %> </p>
                <p> your password is <%= pword %> </p>
    <% } 
} }%>
    </body>
</html>
