package pojo;
// Generated May 22, 2018 8:34:55 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Customer generated by hbm2java
 */
public class Customer  implements java.io.Serializable {


     private Integer id;
     private String fame;
     private String lname;
     private String adressLine1;
     private String adressLine2;
     private String contact1;
     private String contact2;
     private String discription;
     private Integer status;
     private Double currentCredit;
     private Set invoices = new HashSet(0);
     private Set customerCredits = new HashSet(0);

    public Customer() {
    }

    public Customer(String fame, String lname, String adressLine1, String adressLine2, String contact1, String contact2, String discription, Integer status, Double currentCredit, Set invoices, Set customerCredits) {
       this.fame = fame;
       this.lname = lname;
       this.adressLine1 = adressLine1;
       this.adressLine2 = adressLine2;
       this.contact1 = contact1;
       this.contact2 = contact2;
       this.discription = discription;
       this.status = status;
       this.currentCredit = currentCredit;
       this.invoices = invoices;
       this.customerCredits = customerCredits;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getFame() {
        return this.fame;
    }
    
    public void setFame(String fame) {
        this.fame = fame;
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
    public String getContact1() {
        return this.contact1;
    }
    
    public void setContact1(String contact1) {
        this.contact1 = contact1;
    }
    public String getContact2() {
        return this.contact2;
    }
    
    public void setContact2(String contact2) {
        this.contact2 = contact2;
    }
    public String getDiscription() {
        return this.discription;
    }
    
    public void setDiscription(String discription) {
        this.discription = discription;
    }
    public Integer getStatus() {
        return this.status;
    }
    
    public void setStatus(Integer status) {
        this.status = status;
    }
    public Double getCurrentCredit() {
        return this.currentCredit;
    }
    
    public void setCurrentCredit(Double currentCredit) {
        this.currentCredit = currentCredit;
    }
    public Set getInvoices() {
        return this.invoices;
    }
    
    public void setInvoices(Set invoices) {
        this.invoices = invoices;
    }
    public Set getCustomerCredits() {
        return this.customerCredits;
    }
    
    public void setCustomerCredits(Set customerCredits) {
        this.customerCredits = customerCredits;
    }




}


