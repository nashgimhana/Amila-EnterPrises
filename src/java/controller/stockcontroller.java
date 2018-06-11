/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.Date;
import javafx.scene.chart.PieChart;
import model.Case;
import model.GRN;
import model.Products;
import model.Supplier;
import pojo.CaseType;
import pojo.Grn;
import pojo.GrnLog;
import pojo.Product;
import pojo.Units;
import servlet.Casesave;

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
    
    public int SaveProducts(String name, int unitid) {
        try {
            Units unid = new model.Units().getBy(unitid);
            Product p = new Product();
            p.setName(name);
            p.setUnits(unid);
            p.setCurrentPrice(0.0);
            p.setCurrentStock(0.0);
            
            int save = new model.Products().save(p);
            return save;
            
        } catch (Exception e) {
            e.printStackTrace();
            
            return 0;
        }
    }
    
    public int saveCase(int type) {
        try {
            CaseType caseType = new CaseType();
            caseType.setType(type);
            int save = new model.Case().save(caseType);
            return save;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
        
    }
    
    public pojo.Grn saveGrn(int supid, Date date, double total) {
        try {
            pojo.Supplier supplier = new model.Supplier().getBy(supid);
            pojo.Grn g = new Grn();
            g.setSupplier(supplier);
            g.setFulltotal(total);
            g.setDate(date);
            
            int save = new GRN().save(g);
            Grn grn = new GRN().getBy(save);
            return grn;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        
    }
    
    public int saveGrnLog(Grn grnid, String prname, double buyingprice, double quantity, double discount, double total, int casetype) {
        try {
            
            Product product = new Products().getBy(prname);
            CaseType caseType = new Case().getBy(casetype);
            GrnLog gl = new GrnLog();
            gl.setGrn(grnid);
            gl.setProduct(product);
            gl.setBuyingPrice(buyingprice);
            gl.setDiscount(discount);
            gl.setQuantity(quantity);
            gl.setCaseType(caseType);
            gl.setTotal(total);
            gl.setRemainingQuantity(quantity);
            
            product.setCurrentStock(product.getCurrentStock() + quantity);
            new model.Products().update(product);
            //product table eka update krna

            int save = new model.GrnLog().save(gl);
            return save;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
        
    }
    
}
