/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author jessw
 */
public class Staff extends User {
    public Staff(long userID,String First_Name,String Last_Name,String email,String password,int phone_number,String role){
        super(userID,First_Name,Last_Name,email,password,phone_number,role);     
    }
}
