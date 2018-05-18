package pojo;
// Generated May 18, 2018 5:44:16 PM by Hibernate Tools 4.3.1



/**
 * Discount generated by hbm2java
 */
public class Discount  implements java.io.Serializable {


     private int id;
     private Invoice invoice;
     private Product product;
     private Double qty;
     private Double totalcost;

    public Discount() {
    }

	
    public Discount(int id, Invoice invoice, Product product) {
        this.id = id;
        this.invoice = invoice;
        this.product = product;
    }
    public Discount(int id, Invoice invoice, Product product, Double qty, Double totalcost) {
       this.id = id;
       this.invoice = invoice;
       this.product = product;
       this.qty = qty;
       this.totalcost = totalcost;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public Invoice getInvoice() {
        return this.invoice;
    }
    
    public void setInvoice(Invoice invoice) {
        this.invoice = invoice;
    }
    public Product getProduct() {
        return this.product;
    }
    
    public void setProduct(Product product) {
        this.product = product;
    }
    public Double getQty() {
        return this.qty;
    }
    
    public void setQty(Double qty) {
        this.qty = qty;
    }
    public Double getTotalcost() {
        return this.totalcost;
    }
    
    public void setTotalcost(Double totalcost) {
        this.totalcost = totalcost;
    }




}


