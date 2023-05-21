
package model;

public class OrderLine {
    private static int noOrderLine = 0;
    private int orderlineID;
    private int orderID;
    private int quantity;
    private int productID;
    
    
    public OrderLine() {
    }

    public OrderLine(int orderID, int quantity, int productID, String productName, double price) {
        this.orderlineID = OrderLine.noOrderLine;
        this.orderID = orderID;
        this.quantity = quantity;
        this.productID = productID;
        
        OrderLine.noOrderLine++;
    }
    
    
    
    public OrderLine(int orderlineID, int orderID, int quantity, int productID, String productName, double totalPrice, double price) {
        this.orderlineID = orderlineID;
        this.orderID = orderID;
        this.quantity = quantity;
        this.productID = productID;
    }

    public int getOrderlineID() {
        return orderlineID;
    }

    public void setOrderlineID(int orderlineID) {
        this.orderlineID = orderlineID;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    public void upQuantity() {
        this.quantity++;
    }

    public int downQuantity() {
        this.quantity--;
        return this.quantity;
    }
    
    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }   
}
