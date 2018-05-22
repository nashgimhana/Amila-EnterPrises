package pojo;
// Generated May 22, 2018 8:29:43 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * GrnLog generated by hbm2java
 */
public class GrnLog  implements java.io.Serializable {


     private Integer id;
     private Grn grn;
     private Product product;
     private Double buyingPrice;
     private Double quantity;
     private Double remainingQuantity;
     private Double total;
     private Set diliveryItemLogs = new HashSet(0);

    public GrnLog() {
    }

	
    public GrnLog(Grn grn, Product product) {
        this.grn = grn;
        this.product = product;
    }
    public GrnLog(Grn grn, Product product, Double buyingPrice, Double quantity, Double remainingQuantity, Double total, Set diliveryItemLogs) {
       this.grn = grn;
       this.product = product;
       this.buyingPrice = buyingPrice;
       this.quantity = quantity;
       this.remainingQuantity = remainingQuantity;
       this.total = total;
       this.diliveryItemLogs = diliveryItemLogs;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Grn getGrn() {
        return this.grn;
    }
    
    public void setGrn(Grn grn) {
        this.grn = grn;
    }
    public Product getProduct() {
        return this.product;
    }
    
    public void setProduct(Product product) {
        this.product = product;
    }
    public Double getBuyingPrice() {
        return this.buyingPrice;
    }
    
    public void setBuyingPrice(Double buyingPrice) {
        this.buyingPrice = buyingPrice;
    }
    public Double getQuantity() {
        return this.quantity;
    }
    
    public void setQuantity(Double quantity) {
        this.quantity = quantity;
    }
    public Double getRemainingQuantity() {
        return this.remainingQuantity;
    }
    
    public void setRemainingQuantity(Double remainingQuantity) {
        this.remainingQuantity = remainingQuantity;
    }
    public Double getTotal() {
        return this.total;
    }
    
    public void setTotal(Double total) {
        this.total = total;
    }
    public Set getDiliveryItemLogs() {
        return this.diliveryItemLogs;
    }
    
    public void setDiliveryItemLogs(Set diliveryItemLogs) {
        this.diliveryItemLogs = diliveryItemLogs;
    }




}


