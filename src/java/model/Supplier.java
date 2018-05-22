/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import org.hibernate.Session;
import org.hibernate.Transaction;

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
}
