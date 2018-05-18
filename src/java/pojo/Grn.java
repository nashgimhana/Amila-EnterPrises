package pojo;
// Generated May 18, 2018 5:44:16 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Grn generated by hbm2java
 */
public class Grn  implements java.io.Serializable {


     private Integer id;
     private Supplier supplier;
     private Date date;
     private Double fulltotal;
     private Set grnLogs = new HashSet(0);

    public Grn() {
    }

	
    public Grn(Supplier supplier) {
        this.supplier = supplier;
    }
    public Grn(Supplier supplier, Date date, Double fulltotal, Set grnLogs) {
       this.supplier = supplier;
       this.date = date;
       this.fulltotal = fulltotal;
       this.grnLogs = grnLogs;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Supplier getSupplier() {
        return this.supplier;
    }
    
    public void setSupplier(Supplier supplier) {
        this.supplier = supplier;
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
    public Set getGrnLogs() {
        return this.grnLogs;
    }
    
    public void setGrnLogs(Set grnLogs) {
        this.grnLogs = grnLogs;
    }




}


