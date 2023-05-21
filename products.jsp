<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Details</title>
</head>
<body>
    <nav>
        <ul>
            <li><a href="home">Home</a></li>
            <li><a href="products">Products</a></li>
            <li><a href="cart">Cart</a></li>
            <li><a href="logout">Logout</a></li>
        </ul>
    </nav>

    <h1>Product Details</h1>
    
    <table>
        <tr>
            <th>ID</th>
            <th>Description</th>
            <th>Stock Level</th>
            <th>Price</th>
            <% 
                boolean isAdmin = false; // Replace with your logic to determine if the user is an admin
                boolean isStaff = false; // Replace with your logic to determine if the user is staff
                if (isAdmin || isStaff) { %>
                <th>Edit</th>
            <% } else { %>
                <th>Add to Cart</th>
            <% } %>
        </tr>
        <% for (Product product : products) { %>
            <tr>
                <td><%= product.getProductId() %></td>
                <td><%= product.getDescription() %></td>
                <td><%= product.getStockLevel() %></td>
                <td><%= product.getPrice() %></td>
                <% if (isAdmin || isStaff) { %>
                    <td>
                        <% if (isAdmin) { %>
                            <a href="updateProduct?productId=<%= product.getProductId() %>">Edit</a>
                        <% } else { %>
                            <button onclick="openEditDialog(<%= product.getProductId() %>)">Edit</button>
                        <% } %>
                    </td>
                <% } else { %>
                    <td>
                        <form method="POST" action="addToCart">
                            <input type="hidden" name="productId" value="<%= product.getProductId() %>">
                            <button type="submit">Add to Cart</button>
                        </form>
                    </td>
                <% } %>
            </tr>
        <% } %>
    </table>

    <% if (isAdmin || isStaff) { %>
        <script>
            function openEdit(productId) {
                // Implement logic to open the edit product dialog
                
                
            }
        </script>
    <% } %>
</body>
</html>
