<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete User - IoT Bay</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>Delete User - IoT Bay</h1>
        <nav>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="products.jsp">Products</a></li>
                <li><a href="login-register.jsp">Login/Register</a></li>
                <li><a href="account.jsp">Account</a></li>
                <li><a href="manage.jsp">Manage Users</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <h2>Delete User</h2>
        <% 
            // Retrieve the user ID from the request parameter
            String userId = request.getParameter("id");
            
            // Retrieve user information based on the user ID
            User user = userService.getUserById(userId);
            
            if (user != null) {
        %>
        <p>Are you sure you want to delete the user with ID: <%= user.getUserId() %>, Name: <%= user.getFullName() %>?</p>
        <form action="delete-user" method="POST">
            <input type="hidden" name="userId" value="<%= user.getUserId() %>">
            <input type="submit" value="Confirm Delete">
        </form>
        <% 
            } else {
        %>
        <p>User not found.</p>
        <% 
            }
        %>
    </main>
    <footer>
        <p>&copy; 2023 IoT Bay</p>
    </footer>
</body>
</html>
