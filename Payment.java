
package model;

public class Payment {
    private long payId;
    private long orderId;
    private String paymentMethod;
    private Integer cardNumber;
    private Integer cvv;
    private String expiryDate;
    
    private String datePaid;
    
    // insert a constructor that initialies the fields
    public Payment(long payId, long orderId, String paymentMethod, Integer cardNumber, Integer cvv, String nameOnCard, String expiryDate,  String datePaid) {
        this.payId = payId;
        this.orderId = orderId;
        this.paymentMethod = paymentMethod;
        this.cardNumber = cardNumber;
        this.cvv = cvv;
        this.expiryDate = expiryDate;
        this.datePaid = datePaid;
    }   

    
    public long getPayId() {
        return payId;
    }
    public void setPayId(long pID) {
        this.payId = pID;
    }
    
    public long getOrderId() {
        return orderId;
    }
    public void setOrderId(long oID) {
        this.orderId = oID;
    }
    
    public String getPaymentMethod() {
        return paymentMethod;
    }
    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }
    
    
    public Integer getCardNumber() {
        return cardNumber;
    }
    public void setCardNumber(Integer cardNumber) {
        this.cardNumber = cardNumber;
    }
    
    
    public Integer getCvv() {
        return cvv;
    }
    public void setCvv(Integer cvv) {
        this.cvv = cvv;
    }

    
    public String getExpiryDate() {
        return expiryDate;
    }
    public void setExpiryDate(String expiryDate) {
        this.expiryDate = expiryDate;
    }
    
    
     public String getDatePaid() {
        return datePaid;
    }
    public void setDatePaid(String datePaid) {
        this.datePaid = datePaid;
    }
}
