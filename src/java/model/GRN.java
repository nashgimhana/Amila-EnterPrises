/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Nash
 */
public class GRN {

    public int save(pojo.Grn grn) {
//        System.out.println("save ekta awa");
        Session s = conn.NewHibernateUtil.getSessionFactory().openSession();
        try {
            Transaction beginTransaction = s.beginTransaction();
            int i = (int) s.save(grn);
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

    public pojo.Grn getBy(int id) {
        Session s = conn.NewHibernateUtil.getSessionFactory().openSession();
        pojo.Grn uni = null;
        try {
            Criteria cr = s.createCriteria(pojo.Grn.class);
            cr.add(Restrictions.eq("id", id));
            uni = (pojo.Grn) cr.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return uni;
    }
}
