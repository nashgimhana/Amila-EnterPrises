package pojo;
// Generated May 18, 2018 5:44:16 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Cheques generated by hbm2java
 */
public class Cheques  implements java.io.Serializable {


     private Integer id;
     private Bank bank;
     private String chequeNo;
     private String chequeAmount;
     private Date date;
     private String type;
     private Date chequeDate;
     private Integer status;
     private String chequeInfo;

    public Cheques() {
    }

	
    public Cheques(Bank bank) {
        this.bank = bank;
    }
    public Cheques(Bank bank, String chequeNo, String chequeAmount, Date date, String type, Date chequeDate, Integer status, String chequeInfo) {
       this.bank = bank;
       this.chequeNo = chequeNo;
       this.chequeAmount = chequeAmount;
       this.date = date;
       this.type = type;
       this.chequeDate = chequeDate;
       this.status = status;
       this.chequeInfo = chequeInfo;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Bank getBank() {
        return this.bank;
    }
    
    public void setBank(Bank bank) {
        this.bank = bank;
    }
    public String getChequeNo() {
        return this.chequeNo;
    }
    
    public void setChequeNo(String chequeNo) {
        this.chequeNo = chequeNo;
    }
    public String getChequeAmount() {
        return this.chequeAmount;
    }
    
    public void setChequeAmount(String chequeAmount) {
        this.chequeAmount = chequeAmount;
    }
    public Date getDate() {
        return this.date;
    }
    
    public void setDate(Date date) {
        this.date = date;
    }
    public String getType() {
        return this.type;
    }
    
    public void setType(String type) {
        this.type = type;
    }
    public Date getChequeDate() {
        return this.chequeDate;
    }
    
    public void setChequeDate(Date chequeDate) {
        this.chequeDate = chequeDate;
    }
    public Integer getStatus() {
        return this.status;
    }
    
    public void setStatus(Integer status) {
        this.status = status;
    }
    public String getChequeInfo() {
        return this.chequeInfo;
    }
    
    public void setChequeInfo(String chequeInfo) {
        this.chequeInfo = chequeInfo;
    }




}

