<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Management - IoT Bay</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>User Management - IoT Bay</h1>
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
        <!-- Display list of registered users -->
        <h2>All Users</h2>
        <table>
            <!-- Table header -->
            <tr>
                <th>User ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Registration Date</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
            <!-- Populate the table with user data dynamically -->
            <% 
                // Retrieve and iterate over the list of registered users
                List<User> userList = userService.getAllUsers();
                for (User user : userList) {
            %>
            <tr>
                <td><%= user.getUserId() %></td>
                <td><%= user.getFullName() %></td>
                <td><%= user.getEmail() %></td>
                <td><%= user.getRegistrationDate() %></td>
                <td><%= user.getStatus() %></td>
                <td>
                    <!-- Add buttons for managing user accounts -->
                    <a href="edit-user.jsp?id=<%= user.getUserId() %>">Edit</a>
                    <a href="delete-user.jsp?id=<%= user.getUserId() %>">Delete</a>
                </td>
            </tr>
            <% 
                }
            %>
        </table>
    </main>
    <footer>
        <p>&copy; 2023 IoT Bay</p>
    </footer>
</body>
</html>
