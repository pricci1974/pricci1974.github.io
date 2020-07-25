/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.chapter38;

/**
 *
 * @author pdr04
 */
public class FactorialBean {

    private int number;

    public int getNumber() {
        return number;
    }

    public void setNumber(int newValue) {
        number = newValue;
    }

    public long getFactorial() {
        long factorial = 1;
        for (int i = 1; i <= number; i++) {
            factorial *= i;
        }
        return factorial;
    }
}
