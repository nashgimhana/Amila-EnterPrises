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
import pojo.Product;

/**
 *
 * @author Nash
 */
public class Products {

    public int save(Product product) {

        Session s = conn.NewHibernateUtil.getSessionFactory().openSession();
        try {
            Transaction beginTransaction = s.beginTransaction();
            int i = (int) s.save(product);

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

    public ArrayList<pojo.Product> viewAllProducts() {
        Session s = conn.NewHibernateUtil.getSessionFactory().openSession();
        ArrayList<pojo.Product> un = null;
        try {
            Criteria createCriteria = s.createCriteria(pojo.Product.class);
            un = (ArrayList<pojo.Product>) createCriteria.list();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            s.close();
        }
        return un;
    }

    public pojo.Product getBy(int id) {
        Session s = conn.NewHibernateUtil.getSessionFactory().openSession();
        pojo.Product uni = null;
        try {
            Criteria cr = s.createCriteria(pojo.Product.class);
            cr.add(Restrictions.eq("id", id));
            uni = (pojo.Product) cr.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            s.close();
        }
        return uni;
    }

    public pojo.Product getBy(String name) {
        Session s = conn.NewHibernateUtil.getSessionFactory().openSession();
        pojo.Product uni = null;
        try {
            Criteria cr = s.createCriteria(pojo.Product.class);
            cr.add(Restrictions.eq("name", name));
            uni = (pojo.Product) cr.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            s.close();
        }
        return uni;
    }

    public int update(pojo.Product product) {

        Session s = conn.NewHibernateUtil.getSessionFactory().openSession();
        try {
            Transaction beginTransaction = s.beginTransaction();
            s.update(product);

            beginTransaction.commit();
            s.flush();
            return 1;
        } catch (Exception e) {

            return 0;

        } finally {
            s.close();
        }

    }
}
