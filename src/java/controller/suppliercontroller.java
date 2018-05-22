/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import pojo.Supplier;

/**
 *
 * @author Nash
 */
public class suppliercontroller {

    Supplier sm;

    public int savesup(String fname, String lname, String address,String email, String mobile1, String mobile2, String details) {
        try {
//        System.out.println("save sup awa");
        sm = new Supplier();
        sm.setName(fname);
        sm.setLname(lname);
        sm.setAdress(address);
        sm.setEmail(email);
        sm.setMobile1(mobile1);
        sm.setMobile2(mobile2);
        sm.setDetails(details);
        sm.setStatus(1);
//        System.out.println("set una");
        int save = new model.Supplier().save(sm);
//        System.out.println("save eken awa");
        System.out.println(save);
        return save;
        
         } catch (Exception e) {
             e.printStackTrace();
             return 0;
        }
    }
 

}
