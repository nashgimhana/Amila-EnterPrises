package pojo;
// Generated May 18, 2018 5:44:16 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Employee generated by hbm2java
 */
public class Employee  implements java.io.Serializable {


     private Integer id;
     private Position position;
     private String fname;
     private String lname;
     private String adressLine1;
     private String adressLine2;
     private String contact;
     private String contact2;
     private Integer status;
     private Set diliveryEmployeeLogs = new HashSet(0);

    public Employee() {
    }

	
    public Employee(Position position) {
        this.position = position;
    }
    public Employee(Position position, String fname, String lname, String adressLine1, String adressLine2, String contact, String contact2, Integer status, Set diliveryEmployeeLogs) {
       this.position = position;
       this.fname = fname;
       this.lname = lname;
       this.adressLine1 = adressLine1;
       this.adressLine2 = adressLine2;
       this.contact = contact;
       this.contact2 = contact2;
       this.status = status;
       this.diliveryEmployeeLogs = diliveryEmployeeLogs;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Position getPosition() {
        return this.position;
    }
    
    public void setPosition(Position position) {
        this.position = position;
    }
    public String getFname() {
        return this.fname;
    }
    
    public void setFname(String fname) {
        this.fname = fname;
    }
    public String getLname() {
        return this.lname;
    }
    
    public void setLname(String lname) {
        this.lname = lname;
    }
    public String getAdressLine1() {
        return this.adressLine1;
    }
    
    public void setAdressLine1(String adressLine1) {
        this.adressLine1 = adressLine1;
    }
    public String getAdressLine2() {
        return this.adressLine2;
    }
    
    public void setAdressLine2(String adressLine2) {
        this.adressLine2 = adressLine2;
    }
    public String getContact() {
        return this.contact;
    }
    
    public void setContact(String contact) {
        this.contact = contact;
    }
    public String getContact2() {
        return this.contact2;
    }
    
    public void setContact2(String contact2) {
        this.contact2 = contact2;
    }
    public Integer getStatus() {
        return this.status;
    }
    
    public void setStatus(Integer status) {
        this.status = status;
    }
    public Set getDiliveryEmployeeLogs() {
        return this.diliveryEmployeeLogs;
    }
    
    public void setDiliveryEmployeeLogs(Set diliveryEmployeeLogs) {
        this.diliveryEmployeeLogs = diliveryEmployeeLogs;
    }




}

