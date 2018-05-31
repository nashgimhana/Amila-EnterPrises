/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import pojo.Bank;
import pojo.Route;

/**
 *
 * @author Nash
 */
public class ChequeController {

    public int saveBank(String name) {
        try {
            pojo.Bank b = new Bank();
            b.setName(name);
            int save = new model.Bank().save(b);
            return save;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }

    }
}
