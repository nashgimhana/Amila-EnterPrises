package pojo;
// Generated Jun 5, 2018 11:17:44 PM by Hibernate Tools 4.3.1



/**
 * VehicleStock generated by hbm2java
 */
public class VehicleStock  implements java.io.Serializable {


     private Integer id;
     private Product product;
     private Vehicle vehicle;
     private Double currentStock;

    public VehicleStock() {
    }

	
    public VehicleStock(Product product, Vehicle vehicle) {
        this.product = product;
        this.vehicle = vehicle;
    }
    public VehicleStock(Product product, Vehicle vehicle, Double currentStock) {
       this.product = product;
       this.vehicle = vehicle;
       this.currentStock = currentStock;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Product getProduct() {
        return this.product;
    }
    
    public void setProduct(Product product) {
        this.product = product;
    }
    public Vehicle getVehicle() {
        return this.vehicle;
    }
    
    public void setVehicle(Vehicle vehicle) {
        this.vehicle = vehicle;
    }
    public Double getCurrentStock() {
        return this.currentStock;
    }
    
    public void setCurrentStock(Double currentStock) {
        this.currentStock = currentStock;
    }




}


