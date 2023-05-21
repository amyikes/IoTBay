/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author jessw
 */
public class Product{
    
    private long productId;
    private String description;
    private int stockLevel;
    private String price;
    
    public Product(long productId, String description, int stocklevel, String price){
        this.productId = productId;
        this.description = description;
        this.stockLevel = stocklevel;
        this.price = price;  
    }
    
    public long getId(){
        return productId;
    }
    
    public void setId(long productId){
         this.productId = productId;
    }
    
    public String getDescription(){
        return description;
    }
    
    public void setDescription(String description){
         this.description = description;
    }
    
    public int getStocklevel(){
        return stockLevel;
    }  
    
    public void setStocklevel(int stockLevel){
        this.stockLevel = stockLevel;
    }
    
    public String getPrice(){
        return price;
    }
    
    public void setPrice(String price){
         this.price = price;
    }
}
