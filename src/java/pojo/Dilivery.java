package pojo;
// Generated Jun 6, 2018 3:33:42 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Dilivery generated by hbm2java
 */
public class Dilivery  implements java.io.Serializable {


     private Integer id;
     private Route route;
     private Vehicle vehicle;
     private Date date;
     private Set invoices = new HashSet(0);
     private Set ongoingDiliveries = new HashSet(0);
     private Set diliveryEmployeeLogs = new HashSet(0);
     private Set diliveryItemLogs = new HashSet(0);
     private Set diliveryLoads = new HashSet(0);

    public Dilivery() {
    }

	
    public Dilivery(Route route, Vehicle vehicle) {
        this.route = route;
        this.vehicle = vehicle;
    }
    public Dilivery(Route route, Vehicle vehicle, Date date, Set invoices, Set ongoingDiliveries, Set diliveryEmployeeLogs, Set diliveryItemLogs, Set diliveryLoads) {
       this.route = route;
       this.vehicle = vehicle;
       this.date = date;
       this.invoices = invoices;
       this.ongoingDiliveries = ongoingDiliveries;
       this.diliveryEmployeeLogs = diliveryEmployeeLogs;
       this.diliveryItemLogs = diliveryItemLogs;
       this.diliveryLoads = diliveryLoads;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Route getRoute() {
        return this.route;
    }
    
    public void setRoute(Route route) {
        this.route = route;
    }
    public Vehicle getVehicle() {
        return this.vehicle;
    }
    
    public void setVehicle(Vehicle vehicle) {
        this.vehicle = vehicle;
    }
    public Date getDate() {
        return this.date;
    }
    
    public void setDate(Date date) {
        this.date = date;
    }
    public Set getInvoices() {
        return this.invoices;
    }
    
    public void setInvoices(Set invoices) {
        this.invoices = invoices;
    }
    public Set getOngoingDiliveries() {
        return this.ongoingDiliveries;
    }
    
    public void setOngoingDiliveries(Set ongoingDiliveries) {
        this.ongoingDiliveries = ongoingDiliveries;
    }
    public Set getDiliveryEmployeeLogs() {
        return this.diliveryEmployeeLogs;
    }
    
    public void setDiliveryEmployeeLogs(Set diliveryEmployeeLogs) {
        this.diliveryEmployeeLogs = diliveryEmployeeLogs;
    }
    public Set getDiliveryItemLogs() {
        return this.diliveryItemLogs;
    }
    
    public void setDiliveryItemLogs(Set diliveryItemLogs) {
        this.diliveryItemLogs = diliveryItemLogs;
    }
    public Set getDiliveryLoads() {
        return this.diliveryLoads;
    }
    
    public void setDiliveryLoads(Set diliveryLoads) {
        this.diliveryLoads = diliveryLoads;
    }




}


