<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Account - IoT Bay</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>Account - IoT Bay</h1>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="products.jsp">Products</a></li>
                <li><a href="login-register.jsp">Login/Register</a></li>
                <li><a href="account.jsp">Account</a></li>
                <li><a href="manage.jsp">Manage Accounts</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <h2>Account Information</h2>
        <table>
            <tr>
                <th>User ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>User Role</th>
            </tr>
            <%
                // Retrieve account information from the controller or database
                User user = accountController.getAccountInfo();
            %>
            <tr>
                <td><%= user.getUserId() %></td>
                <td><%= user.getFirstName() %></td>
                <td><%= user.getLastName() %></td>
                <td><%= user.getEmail() %></td>
                <td><%= user.getPhoneNumber() %></td>
                <td><%= user.getUserRole() %></td>
            </tr>
        </table>
        <h2>Access Logs</h2>
        <table>
            <tr>
                <th>Login Time</th>
                <th>Logout Time</th>
            </tr>
            <%
                // Retrieve access logs from the controller or database
                List<AccessLog> accessLogs = accountController.getAccessLogs();
                for (AccessLog log : accessLogs) {
            %>
            <tr>
                <td><%= log.getStartTime() %></td>
                <td><%= log.getEndTime() %></td>
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
