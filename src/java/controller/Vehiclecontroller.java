/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import pojo.Units;
import pojo.Vehicle;

/**
 *
 * @author Nash
 */
public class Vehiclecontroller {
        public int saveVehicles(String no,String Discription) {
        try {
            Vehicle veh = new Vehicle();
            veh.setVehicleNumber(no);
            veh.setDiscription(Discription);
            int save = new model.Vehicle().save(veh);
            return save;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }

    }
}
