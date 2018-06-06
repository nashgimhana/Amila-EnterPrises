package pojo;
// Generated Jun 6, 2018 3:33:42 PM by Hibernate Tools 4.3.1



/**
 * DiliveryLoad generated by hbm2java
 */
public class DiliveryLoad  implements java.io.Serializable {


     private Integer id;
     private Dilivery dilivery;
     private Product product;
     private Double loadQty;
     private Double sellingPrice;
     private Double total;

    public DiliveryLoad() {
    }

	
    public DiliveryLoad(Dilivery dilivery, Product product) {
        this.dilivery = dilivery;
        this.product = product;
    }
    public DiliveryLoad(Dilivery dilivery, Product product, Double loadQty, Double sellingPrice, Double total) {
       this.dilivery = dilivery;
       this.product = product;
       this.loadQty = loadQty;
       this.sellingPrice = sellingPrice;
       this.total = total;
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
    public Product getProduct() {
        return this.product;
    }
    
    public void setProduct(Product product) {
        this.product = product;
    }
    public Double getLoadQty() {
        return this.loadQty;
    }
    
    public void setLoadQty(Double loadQty) {
        this.loadQty = loadQty;
    }
    public Double getSellingPrice() {
        return this.sellingPrice;
    }
    
    public void setSellingPrice(Double sellingPrice) {
        this.sellingPrice = sellingPrice;
    }
    public Double getTotal() {
        return this.total;
    }
    
    public void setTotal(Double total) {
        this.total = total;
    }




}


