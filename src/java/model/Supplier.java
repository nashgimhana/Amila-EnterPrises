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
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Nash
 */
public class Supplier {

    public int save(pojo.Supplier supplier) {
//        System.out.println("save ekta awa");
        Session s = conn.NewHibernateUtil.getSessionFactory().openSession();
        try {
            Transaction beginTransaction = s.beginTransaction();
            int i = (int) s.save(supplier);
//            System.out.println("save metto");
            beginTransaction.commit();
            s.flush();
//            System.out.println("done");
            return i;

        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        } finally {
            s.close();
        }
    }

    public ArrayList<pojo.Supplier> viewAllSuppliers() {
        Session s = conn.NewHibernateUtil.getSessionFactory().openSession();
        ArrayList<pojo.Supplier> un = null;
        try {
            Criteria createCriteria = s.createCriteria(pojo.Supplier.class);
            un = (ArrayList<pojo.Supplier>) createCriteria.list();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            s.close();
        }
        return un;
    }

    public pojo.Supplier getBy(int id) {
        Session s = conn.NewHibernateUtil.getSessionFactory().openSession();
        pojo.Supplier uni = null;
        try {
            Criteria cr = s.createCriteria(pojo.Supplier.class);
            cr.add(Restrictions.eq("id", id));
            uni = (pojo.Supplier) cr.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return uni;
    }

}
