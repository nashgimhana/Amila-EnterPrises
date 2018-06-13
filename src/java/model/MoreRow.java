/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author RM.LasanthaRanga@gmail.com
 */
public class MoreRow {

    /**
     * @return the rowNo
     */
    public int getRowNo() {
        return rowNo;
    }

    /**
     * @return the grnNo
     */
    public int getGrnNo() {
        return grnNo;
    }

    /**
     * @return the date
     */
    public String getDate() {
        return date;
    }

    /**
     * @return the c_qty
     */
    public double getC_qty() {
        return c_qty;
    }

    /**
     * @return the casetype
     */
    public int getCasetype() {
        return casetype;
    }

    /**
     * @return the load_qty
     */
    public double getLoad_qty() {
        return load_qty;
    }

    /**
     * @return the btnNo
     */
    public String getBtnNo() {
        return btnNo;
    }

    private final int rowNo;
    private final int grnNo;
    private final String date;
    private final double c_qty;
    private final int casetype;
    private final double load_qty;
    private final String btnNo;

    public MoreRow(int rowNo, int grnNo, String date, double c_qty, int casetype, double load_qty, String btnNo) {
        this.rowNo = rowNo;
        this.grnNo = grnNo;
        this.date = date;
        this.c_qty = c_qty;
        this.casetype = casetype;
        this.load_qty = load_qty;
        this.btnNo = btnNo;
    }

}
