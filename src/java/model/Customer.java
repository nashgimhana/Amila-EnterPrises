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
 * @author RM.LasanthaRanga@gmail.com
 */
public class Customer {

    public boolean saveCustomer(String fname, String lname, String adl1, String adl2, String con1, String con2, String details) {
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
            session.saveOrUpdate(cus);
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
