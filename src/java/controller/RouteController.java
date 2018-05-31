/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import pojo.Route;
import pojo.Vehicle;

/**
 *
 * @author Nash
 */
public class RouteController {

    public int saveVehicles(String name, String Discription) {
        try {
            pojo.Route r = new Route();
            r.setName(name);
            r.setDiscription(Discription);
            int save = new model.Route().save(r);
            return save;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }

    }
}
