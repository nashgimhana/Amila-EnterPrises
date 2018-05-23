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

    public ArrayList<pojo.Units> viewAllUnits() {
        Session s = conn.NewHibernateUtil.getSessionFactory().openSession();
        ArrayList<pojo.Units> un = null;
        try {
            Criteria createCriteria = s.createCriteria(pojo.Units.class);
            un = (ArrayList<pojo.Units>) createCriteria.list();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            s.close();
        }
        return un;
    }

    public pojo.Units getBy(int id) {
        Session s = conn.NewHibernateUtil.getSessionFactory().openSession();
        pojo.Units uni = null;
        try {
            Criteria cr = s.createCriteria(pojo.Units.class);
            cr.add(Restrictions.eq("id", id));
            uni = (pojo.Units) cr.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return uni;
    }

}
