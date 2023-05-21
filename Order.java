package model;

import java.util.ArrayList;
import java.util.List;

public class Order {
    private List<Product> products;
    private long orderId;
    private long customerId;
    
    public Order(long orderId, long customerId) {
        this.orderId = orderId;
        this.customerId = customerId;
        this.products = new ArrayList<>();
    }
    
    public List<Product> getProducts() {
        return products;
    }
    
    public void setProducts(List<Product> products) {
        this.products = products;
    }
    
    public long getOrderId() {
        return orderId;
    }
    
    public void setOrderId(long orderId) {
        this.orderId = orderId;
    }
    
    public long getCustomerId() {
        return customerId;
    }
    
    public void setCustomerId(long customerId) {
        this.customerId = customerId;
    }
    
    public void addProduct(Product product) {
        products.add(product);
    }
    
    public void removeProduct(Product product) {
        products.remove(product);
    }
    
    // Add any other methods or functionality as needed
    
    // Override toString method to provide a string representation of the Order object
    @Override
    public String toString() {
        return "Order ID: " + orderId + ", Customer ID: " + customerId + ", Products: " + products;
    }
}
