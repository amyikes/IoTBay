package model;

public class User {
    protected long userID;
    protected String First_Name;
    protected String Last_Name;
    protected String password;
    protected String email;
    protected int phone_number;
    protected String role;
    
    public User(long userID,String First_Name,String Last_Name,String email,String password,int phone_number,String role){
        this.userID = userID;
        this.First_Name = First_Name;
        this.Last_Name = Last_Name;
        this.password = password;
        this.email = email;
        this.phone_number = phone_number;
        this.role=role;
    }

    public String getFirstName(){ 
        return First_Name;
    }
    public String getLastName(){
        return Last_Name;
    }
    
    public void setName (String First_Name, String Last_Name){
        this.First_Name = First_Name;
        this.Last_Name = Last_Name;
    }
 
    
    public String getPassword(){
        return password;
    }
    
    public long getUserId(){
        return userID;
    }
    
    public void setPassword (String password){
        this.password = password;
    }
    
    public String getEmail(){
        return email;
    }
    
    public void setEmail (String email){
        this.email = email;
    }
    
    public int getPhoneNumber(){
        return phone_number;
    }
    
    public void setPhoneNumber (int phone_number){
        this.phone_number = phone_number;
    }
    
    public String getUserRole(){ 
        return role;
    }
    
    public void setUserRole(String role){
        this.role=role;
    }
}
