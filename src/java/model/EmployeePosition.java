/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author RM.LasanthaRanga@gmail.com
 */
public class EmployeePosition {

    public List<String> getPositionList() {
        Session session = conn.NewHibernateUtil.getSessionFactory().openSession();
        ArrayList<String> arrayList = new ArrayList<String>();
        try {
            List<pojo.Position> list = session.createCriteria(pojo.Position.class).list();
            for (pojo.Position position : list) {
                arrayList.add(position.getPositionName());
            }
            return arrayList;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            session.close();
        }
    }
}
