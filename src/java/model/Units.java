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
public class Units {
    
     public int save(pojo.Units units) {
        Session s = conn.NewHibernateUtil.getSessionFactory().openSession();
        try {
            Transaction beginTransaction = s.beginTransaction();
            int i = (int) s.save(units);
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
    
}
