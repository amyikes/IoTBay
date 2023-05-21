/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author jessw
 */
public class AccessLog {
    
    private long userId;
    private long startTime;
    private long endTime;
    private String role;
    
    public AccessLog(long userId, long startTime, long endTime, String role)  {
        this.userId = userId;
        this.startTime = startTime;
        this.endTime = endTime;
        this.role = role;
    }
    
    public AccessLog getlog(){
        return this;
    }
    
    public long getId(){
        return userId;
    }
    
    public long getStartTime(){
        return startTime;
    }
    
    public long getEndTime(){
        return endTime;
    }
    
    public String getRole(){
        return role;
    }
}
