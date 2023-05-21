<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit User - IoT Bay</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>Edit User - IoT Bay</h1>
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
        <h2>Edit User</h2>
        <% 
            // Retrieve the user ID from the request parameter
            String userId = request.getParameter("id");
            
            // Retrieve user information based on the user ID
            User user = userService.getUserById(userId);
            
            if (user != null) {
        %>
        <form action="edit-user" method="POST">
            <input type="hidden" name="userId" value="<%= user.getUserId() %>">
            <label for="fullName">Full Name:</label>
            <input type="text" id="fullName" name="fullName" value="<%= user.getFullName() %>" required>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="<%= user.getEmail() %>" required>
            <!-- Add more input fields for other user details -->
            <input type="submit" value="Save Changes">
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
