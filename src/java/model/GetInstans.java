/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import com.sun.xml.internal.ws.api.server.Module;

/**
 *
 * @author RM.LasanthaRanga@gmail.com
 */
public class GetInstans {
    private static model.Customer customerModle;
    private static model.EmployeePosition employeePosition;
    private static model.Employee empModle;

    /**
     * @return the customerModle
     */
    public static model.Customer getCustomerModle() {
        if(customerModle==null){customerModle = new Customer();}
        return customerModle;
    }

    /**
     * @return the employeePosition
     */
    public static model.EmployeePosition getEmployeePosition() {
        if(employeePosition==null){employeePosition = new EmployeePosition();}
        return employeePosition;
    }

    /**
     * @return the empModle
     */
    public static model.Employee getEmpModle() {
        if(empModle==null){
        empModle = new model.Employee();
        }
        return empModle;
        
        
    }
}
