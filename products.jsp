<%-- 
    Document   : products
    Created on : 3 Apr 2023, 9:04:11 pm
    Author     : amy
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>

<%
    // Initialize the orders session variable if it doesn't exist
    if (session.getAttribute("orders") == null) {
        session.setAttribute("orders", new HashMap<String, Integer>());
    }

    // Define a HashMap of products and their prices
    Map<String, Integer> products = new HashMap<String, Integer>();
    products.put("Product 1", 10);
    products.put("Product 2", 20);
    products.put("Product 3", 30);

    // Get the orders session variable
    Map<String, Integer> orders = (Map<String, Integer>) session.getAttribute("orders");
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Products</title>
        <link rel="stylesheet" href="style2.css"/>
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
        <h1>Products</h1>
        <table>
            <thead>
                <tr>
                    <th>Product</th>
                    <th>Price</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <% for (String product : products.keySet()) { %>
                    <tr>
                        <td><%= product %></td>
                        <td><%= products.get(product) %></td>
                        <td>
                            <form method="post" action="products.jsp">
                                <input type="hidden" name="product" value="<%= product %>">
                                <input type="submit" value="Buy">
                            </form>
                        </td>
                    </tr>
                <% } %>
            </tbody>
        </table>
        <br>
        <h2>Orders</h2>
        <table>
            <thead>
                <tr>
                    <th>Product</th>
                    <th>Quantity</th>
                </tr>
            </thead>
            <tbody>
                <% for (String product : orders.keySet()) { %>
                    <tr>
                        <td><%= product %></td>
                        <td><%= orders.get(product) %></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </body>
</html>

<%
    // Check if the Buy button was clicked and update the orders session variable accordingly
    String product = request.getParameter("product");
    if (product != null) {
        int quantity = 1;
        if (orders.containsKey(product)) {
            quantity = orders.get(product) + 1;
        }
        orders.put(product, quantity);
    }
%>
