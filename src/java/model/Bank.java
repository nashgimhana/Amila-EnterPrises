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
public class Bank {

    public int save(pojo.Bank bank) {
        Session s = conn.NewHibernateUtil.getSessionFactory().openSession();
        try {
            Transaction beginTransaction = s.beginTransaction();
            int i = (int) s.save(bank);
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

    public ArrayList<pojo.Bank> viewAllBanks() {
        Session s = conn.NewHibernateUtil.getSessionFactory().openSession();
        ArrayList<pojo.Bank> bnk = null;
        try {
            Criteria createCriteria = s.createCriteria(pojo.Bank.class);
            bnk = (ArrayList<pojo.Bank>) createCriteria.list();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            s.close();
        }
        return bnk;
    }

    public pojo.Bank getBy(int id) {
        Session s = conn.NewHibernateUtil.getSessionFactory().openSession();
        pojo.Bank bank = null;
        try {
            Criteria cr = s.createCriteria(pojo.Bank.class);
            cr.add(Restrictions.eq("id", id));
            bank = (pojo.Bank) cr.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bank;
    }

}
