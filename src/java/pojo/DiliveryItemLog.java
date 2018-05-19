package pojo;
// Generated May 18, 2018 5:44:16 PM by Hibernate Tools 4.3.1



/**
 * DiliveryItemLog generated by hbm2java
 */
public class DiliveryItemLog  implements java.io.Serializable {


     private Integer id;
     private Dilivery dilivery;
     private GrnLog grnLog;
     private Product product;
     private Double fullQty;
     private Double remainingQuantity;

    public DiliveryItemLog() {
    }

	
    public DiliveryItemLog(Dilivery dilivery, GrnLog grnLog, Product product) {
        this.dilivery = dilivery;
        this.grnLog = grnLog;
        this.product = product;
    }
    public DiliveryItemLog(Dilivery dilivery, GrnLog grnLog, Product product, Double fullQty, Double remainingQuantity) {
       this.dilivery = dilivery;
       this.grnLog = grnLog;
       this.product = product;
       this.fullQty = fullQty;
       this.remainingQuantity = remainingQuantity;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Dilivery getDilivery() {
        return this.dilivery;
    }
    
    public void setDilivery(Dilivery dilivery) {
        this.dilivery = dilivery;
    }
    public GrnLog getGrnLog() {
        return this.grnLog;
    }
    
    public void setGrnLog(GrnLog grnLog) {
        this.grnLog = grnLog;
    }
    public Product getProduct() {
        return this.product;
    }
    
    public void setProduct(Product product) {
        this.product = product;
    }
    public Double getFullQty() {
        return this.fullQty;
    }
    
    public void setFullQty(Double fullQty) {
        this.fullQty = fullQty;
    }
    public Double getRemainingQuantity() {
        return this.remainingQuantity;
    }
    
    public void setRemainingQuantity(Double remainingQuantity) {
        this.remainingQuantity = remainingQuantity;
    }




}

