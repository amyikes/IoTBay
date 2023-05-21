/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author jessw
 */
public class Customer extends User{
    private String city;
    private String street;
    private String state;
    private String suburb;
    private int number;
    public Customer(long userID,String First_Name,String Last_Name,String email,String password,int phone_number,String role){
        super(userID,First_Name,Last_Name,email,password,phone_number,role);     
    }
        
    public void setAddress (String city,String street, String suburb, String state, int number){
        this.city = city;
        this.street = street;
        this.suburb = suburb;
        this.state = state;
        this.number = number;
    }
    public String getAddress(){ //if i need to split this up later sure
        return number + " " + street + ", " + suburb + ", " + city + ".";
    }
    
    
}
