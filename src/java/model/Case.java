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
public class Case {

    public int save(pojo.CaseType caseType) {
        Session s = conn.NewHibernateUtil.getSessionFactory().openSession();
        try {
            Transaction beginTransaction = s.beginTransaction();
            int i = (int) s.save(caseType);
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

    public ArrayList<pojo.CaseType> viewAllCases() {
        Session s = conn.NewHibernateUtil.getSessionFactory().openSession();
        ArrayList<pojo.CaseType> un = null;
        try {
            Criteria createCriteria = s.createCriteria(pojo.CaseType.class);
            un = (ArrayList<pojo.CaseType>) createCriteria.list();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            s.close();
        }
        return un;
    }

    public pojo.CaseType getBy(int casetype) {
        Session s = conn.NewHibernateUtil.getSessionFactory().openSession();
        pojo.CaseType uni = null;
        try {
            Criteria cr = s.createCriteria(pojo.CaseType.class);
            cr.add(Restrictions.eq("type", casetype));
            uni = (pojo.CaseType) cr.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return uni;
    }

}
