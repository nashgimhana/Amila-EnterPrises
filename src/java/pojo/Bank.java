package pojo;
// Generated Jun 5, 2018 11:17:44 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Bank generated by hbm2java
 */
public class Bank  implements java.io.Serializable {


     private Integer id;
     private String name;
     private Set chequeses = new HashSet(0);

    public Bank() {
    }

    public Bank(String name, Set chequeses) {
       this.name = name;
       this.chequeses = chequeses;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public Set getChequeses() {
        return this.chequeses;
    }
    
    public void setChequeses(Set chequeses) {
        this.chequeses = chequeses;
    }




}


