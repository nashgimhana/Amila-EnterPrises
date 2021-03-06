package pojo;
// Generated Jun 13, 2018 3:21:00 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Units generated by hbm2java
 */
public class Units  implements java.io.Serializable {


     private Integer id;
     private String unitName;
     private Set<Product> products = new HashSet<Product>(0);

    public Units() {
    }

    public Units(String unitName, Set<Product> products) {
       this.unitName = unitName;
       this.products = products;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getUnitName() {
        return this.unitName;
    }
    
    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }
    public Set<Product> getProducts() {
        return this.products;
    }
    
    public void setProducts(Set<Product> products) {
        this.products = products;
    }




}


