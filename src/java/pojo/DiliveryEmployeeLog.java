package pojo;
// Generated Jun 13, 2018 3:21:00 AM by Hibernate Tools 4.3.1



/**
 * DiliveryEmployeeLog generated by hbm2java
 */
public class DiliveryEmployeeLog  implements java.io.Serializable {


     private Integer id;
     private Dilivery dilivery;
     private Employee employee;

    public DiliveryEmployeeLog() {
    }

    public DiliveryEmployeeLog(Dilivery dilivery, Employee employee) {
       this.dilivery = dilivery;
       this.employee = employee;
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
    public Employee getEmployee() {
        return this.employee;
    }
    
    public void setEmployee(Employee employee) {
        this.employee = employee;
    }




}


