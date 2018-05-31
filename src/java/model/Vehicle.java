/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Nash
 */
public class Vehicle {

    public int save(pojo.Vehicle vehicle) {
        Session s = conn.NewHibernateUtil.getSessionFactory().openSession();
        try {
            Transaction beginTransaction = s.beginTransaction();
            int i = (int) s.save(vehicle);
            beginTransaction.commit();
            s.flush();
            return i;

        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        } finally {
            s.close();
        }
    }

    public ArrayList<pojo.Vehicle> viewAllVehicles() {
        Session s = conn.NewHibernateUtil.getSessionFactory().openSession();
        ArrayList<pojo.Vehicle> ve = null;
        try {
            Criteria createCriteria = s.createCriteria(pojo.Vehicle.class);
            ve = (ArrayList<pojo.Vehicle>) createCriteria.list();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            s.close();
        }
        return ve;
    }
}
