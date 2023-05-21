<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Accounts - IoT Bay</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>Manage Accounts - IoT Bay</h1>
        <nav>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="products.jsp">Products</a></li>
                <li><a href="login-register.jsp">Login/Register</a></li>
                <li><a href="account.jsp">Account</a></li>
                <li><a href="manage.jsp">Manage Accounts</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <h2>Search and Manage Accounts</h2>
        <form action="manage.jsp" method="POST">
            <label for="searchQuery">Search:</label>
            <input type="text" id="searchQuery" name="searchQuery" placeholder="Enter search query">
            <input type="submit" value="Search">
        </form>
        <table>
            <tr>
                <th>User ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>User Role</th>
                <th>Action</th>
            </tr>
            <% 
                // Retrieve user accounts from the controller or database
                List<User> userAccounts = manageController.searchAccounts(request.getParameter("searchQuery"));
                for (User user : userAccounts) {
            %>
            <tr>
                <td><%= user.getUserId() %></td>
                <td><%= user.getFirstName() %></td>
                <td><%= user.getLastName() %></td>
                <td><%= user.getEmail() %></td>
                <td><%= user.getPhoneNumber() %></td>
                <td><%= user.getUserRole() %></td>
                <td>
                    <a href="delete.jsp?userId=<%= user.getUserId() %>">Delete</a>
                    <a href="edit.jsp?userId=<%= user.getUserId() %>">Edit</a>
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
