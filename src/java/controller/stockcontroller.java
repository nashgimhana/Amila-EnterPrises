/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import pojo.Units;

/**
 *
 * @author Nash
 */
public class stockcontroller {

    public int saveUnits(String name) {
        try {
            Units un = new Units();
            un.setUnitName(name);
            int save = new model.Units().save(un);
            return save; 
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }

    }

}
