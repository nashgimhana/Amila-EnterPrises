/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.Date;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.CustomerCredit;

/**
 *
 * @author RM.LasanthaRanga@gmail.com
 */
public class Customer {

    public int saveCustomer(String fname, String lname, String adl1, String adl2, String con1, String con2, String details) {
        Session session = conn.NewHibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            pojo.Customer cus = new pojo.Customer();
            cus.setFame(fname);
            cus.setLname(lname);
            cus.setAdressLine1(adl1);
            cus.setAdressLine2(adl2);
            cus.setContact1(con1);
            cus.setContact2(con2);
            cus.setDiscription(details);
            cus.setStatus(1);
            Serializable save = session.save(cus);
            pojo.Customer cust = (pojo.Customer) session.load(pojo.Customer.class, save);
            transaction.commit();
            return cust.getId();
        } catch (Exception e) {
            transaction.rollback();
            e.printStackTrace();
            return 0;
        } finally {
            session.close();
        }
    }

    public String getCustomerByCusId(String cusID) {
        Session session = conn.NewHibernateUtil.getSessionFactory().openSession();
        try {
            pojo.Customer cus = (pojo.Customer) session.load(pojo.Customer.class, Integer.parseInt(cusID));
            return cus.getFame() + " " + cus.getLname();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        } finally {
            session.close();
        }
    }

    public boolean saveCustomerCredit(Date day, String cusID, Double credit) {
        Session session = conn.NewHibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            pojo.Customer cus = (pojo.Customer) session.load(pojo.Customer.class, Integer.parseInt(cusID));
            CustomerCredit cr = new pojo.CustomerCredit(cus);
            cr.setAmount(credit);
            cr.setDate(day);
            session.save(cr);
            transaction.commit();
            return true;
        } catch (Exception e) {
            transaction.rollback();
            e.printStackTrace();
            return false;
        } finally {
            session.close();
        }
    }



}
