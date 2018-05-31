/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import pojo.Position;

/**
 *
 * @author RM.LasanthaRanga@gmail.com
 */
public class Employee {

    public boolean saveEmplooee(HashMap<String, String> hm) {
        Session session = conn.NewHibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        ArrayList<String> arrayList = new ArrayList<String>();
        try {
            Position position = (pojo.Position) session.createCriteria(pojo.Position.class).add(Restrictions.eq("positionName", hm.get("position"))).uniqueResult();
            pojo.Employee emp = new pojo.Employee(position);

            emp.setFname(hm.get("fname"));
            emp.setLname(hm.get("lname"));
            emp.setAdressLine1(hm.get("adl1"));
            emp.setAdressLine2(hm.get("adl2"));
            emp.setContact(hm.get("con1"));
            emp.setContact2(hm.get("con2"));
            emp.setStatus(1);
            session.save(emp);
            transaction.commit();;

            return true;
        } catch (Exception e) {
            e.printStackTrace();
            transaction.rollback();
            return false;
        } finally {
            session.close();
        }
    }
}
