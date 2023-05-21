<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Orders - IoT Bay</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>Orders - IoT Bay</h1>
        <nav>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="products.jsp">Products</a></li>
                <li><a href="login-register.jsp">Login/Register</a></li>
                <li><a href="account.jsp">Account</a></li>
                <li><a href="orders.jsp">Orders</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <h2>My Orders</h2>
        <% 
            // Retrieve user orders from the controller or database
            List<Order> userOrders = orderController.getOrdersForUser(currentUserId);
            for (Order order : userOrders) {
        %>
        <div class="order">
            <h3>Order ID: <%= order.getOrderId() %></h3>
            <p>Date: <%= order.getOrderDate() %></p>
            <p>Status: <%= order.getStatus() %></p>
            <table>
                <tr>
                    <th>Product</th>
                    <th>Quantity</th>
                    <th>Price</th>
                </tr>
                <% 
                    List<OrderItem> orderItems = order.getOrderItems();
                    for (OrderItem item : orderItems) {
                %>
                <tr>
                    <td><%= item.getProduct().getDescription() %></td>
                    <td><%= item.getQuantity() %></td>
                    <td><%= item.getProduct().getPrice() %></td>
                </tr>
                <% 
                    }
                %>
            </table>
            <p>Total Price: <%= order.getTotalPrice() %></p>
        </div>
        <% 
            }
        %>
        <h2>Complete Order</h2>
        <form action="checkout.jsp" method="POST">
            <div>
                <label for="cardNumber">Credit Card Number:</label>
                <input type="text" id="cardNumber" name="cardNumber" placeholder="Enter your credit card number">
            </div>
            <div>
                <label for="expiryDate">Expiry Date:</label>
                <input type="text" id="expiryDate" name="expiryDate" placeholder="Enter expiry date">
            </div>
            <div>
                <label for="csv">CSV:</label>
                <input type="text" id="csv" name="csv" placeholder="Enter CSV">
            </div>
            <input type="submit" value="Complete Order">
        </form>

        <% if (request.getMethod().equals("POST")) {
            // Retrieve payment details from the form
            String cardNumber = request.getParameter("cardNumber");
            String expiryDate = request.getParameter("expiryDate");
            String csv = request.getParameter("csv");

            //Order newOrder = new Order(orderId, customerId);
            
            //orderController.addOrder(newOrder);

            // Display the thank you message
            %>
            <h2>Thank You for Your Order!</h2>
            <p>Your order has been placed successfully.</p>
        <% } %>
        
    </main>
    <footer>
        <p>&copy; 2023 IoT Bay</p>
    </footer>
</body>
</html>
