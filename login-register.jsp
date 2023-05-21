<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login/Register - IoT Bay</title>
    <link rel="stylesheet" href="style.css">
    <style>
        .forms-container {
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        form {
            display: grid;
            grid-gap: 10px;
        }

        label {
            display: inline-block;
            width: 120px;
        }

        input[type="submit"] {
            margin-left: 120px; /* Match label width */
        }
    </style>
</head>
<body>
    <header>
        <h1>Login/Register - IoT Bay</h1>
        <nav>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="products.jsp">Products</a></li>
                <li><a href="login-register.jsp">Login/Register</a></li>
                <li><a href="account.jsp">Account</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <div class="forms-container">
            <div>
                <h2>Login</h2>
                <form action="login" method="POST">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                    <input type="submit" value="Login">
                </form>
            </div>
            <div>
                <h2>Register</h2>
                <form action="register" method="POST">
                    <label for="firstName">First Name:</label>
                    <input type="text" id="firstName" name="firstName" required>
                    <label for="lastName">Last Name:</label>
                    <input type="text" id="lastName" name="lastName" required>
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                    <label for="phoneNumber">Phone Number:</label>
                    <input type="text" id="phoneNumber" name="phoneNumber" required>
                    <input type="submit" value="Register">
                </form>
            </div>
        </div>
    </main>
    <footer>
        <p>&copy; 2023 IoT Bay</p>
    </footer>
</body>
</html>
