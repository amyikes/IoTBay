
package model;

public class Orders {
    private int orderID;
    private int userID;
    private String orderDate;
    
   

    public Orders(int orderID, int userID, String orderDate) {
        this.orderID = orderID;
        this.userID = userID;
        this.orderDate = orderDate;
    }
    
    
    public int getOrderID() {
        return orderID;
    }
    
    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }


    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    
}
