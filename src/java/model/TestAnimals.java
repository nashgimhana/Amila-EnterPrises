/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Nash
 */
public class TestAnimals {
public static void main (String [] args) {
    Horse h=new Horse();
    h.eat();
}
}
class Animal {
public void eat() {
System.out.println("Generic Animal Eating Generically");
}
}
class Horse extends Animal { 
    public void nash(){
        eat();
    }
}
