package pojo;
// Generated Jun 13, 2018 3:21:00 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Supplier generated by hbm2java
 */
public class Supplier  implements java.io.Serializable {


     private Integer id;
     private String name;
     private String lname;
     private String adress;
     private String email;
     private String mobile1;
     private String mobile2;
     private Integer status;
     private String details;
     private Set<Grn> grns = new HashSet<Grn>(0);
     private Set<SupplierHasCheques> supplierHasChequeses = new HashSet<SupplierHasCheques>(0);

    public Supplier() {
    }

    public Supplier(String name, String lname, String adress, String email, String mobile1, String mobile2, Integer status, String details, Set<Grn> grns, Set<SupplierHasCheques> supplierHasChequeses) {
       this.name = name;
       this.lname = lname;
       this.adress = adress;
       this.email = email;
       this.mobile1 = mobile1;
       this.mobile2 = mobile2;
       this.status = status;
       this.details = details;
       this.grns = grns;
       this.supplierHasChequeses = supplierHasChequeses;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getLname() {
        return this.lname;
    }
    
    public void setLname(String lname) {
        this.lname = lname;
    }
    public String getAdress() {
        return this.adress;
    }
    
    public void setAdress(String adress) {
        this.adress = adress;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getMobile1() {
        return this.mobile1;
    }
    
    public void setMobile1(String mobile1) {
        this.mobile1 = mobile1;
    }
    public String getMobile2() {
        return this.mobile2;
    }
    
    public void setMobile2(String mobile2) {
        this.mobile2 = mobile2;
    }
    public Integer getStatus() {
        return this.status;
    }
    
    public void setStatus(Integer status) {
        this.status = status;
    }
    public String getDetails() {
        return this.details;
    }
    
    public void setDetails(String details) {
        this.details = details;
    }
    public Set<Grn> getGrns() {
        return this.grns;
    }
    
    public void setGrns(Set<Grn> grns) {
        this.grns = grns;
    }
    public Set<SupplierHasCheques> getSupplierHasChequeses() {
        return this.supplierHasChequeses;
    }
    
    public void setSupplierHasChequeses(Set<SupplierHasCheques> supplierHasChequeses) {
        this.supplierHasChequeses = supplierHasChequeses;
    }




}


