package pojo;
// Generated May 18, 2018 5:44:16 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Invoice generated by hbm2java
 */
public class Invoice  implements java.io.Serializable {


     private Integer id;
     private Customer customer;
     private Dilivery dilivery;
     private Date date;
     private Double fulltotal;
     private Set discounts = new HashSet(0);
     private Set invoiceLogs = new HashSet(0);

    public Invoice() {
    }

	
    public Invoice(Customer customer, Dilivery dilivery) {
        this.customer = customer;
        this.dilivery = dilivery;
    }
    public Invoice(Customer customer, Dilivery dilivery, Date date, Double fulltotal, Set discounts, Set invoiceLogs) {
       this.customer = customer;
       this.dilivery = dilivery;
       this.date = date;
       this.fulltotal = fulltotal;
       this.discounts = discounts;
       this.invoiceLogs = invoiceLogs;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Customer getCustomer() {
        return this.customer;
    }
    
    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
    public Dilivery getDilivery() {
        return this.dilivery;
    }
    
    public void setDilivery(Dilivery dilivery) {
        this.dilivery = dilivery;
    }
    public Date getDate() {
        return this.date;
    }
    
    public void setDate(Date date) {
        this.date = date;
    }
    public Double getFulltotal() {
        return this.fulltotal;
    }
    
    public void setFulltotal(Double fulltotal) {
        this.fulltotal = fulltotal;
    }
    public Set getDiscounts() {
        return this.discounts;
    }
    
    public void setDiscounts(Set discounts) {
        this.discounts = discounts;
    }
    public Set getInvoiceLogs() {
        return this.invoiceLogs;
    }
    
    public void setInvoiceLogs(Set invoiceLogs) {
        this.invoiceLogs = invoiceLogs;
    }




}


