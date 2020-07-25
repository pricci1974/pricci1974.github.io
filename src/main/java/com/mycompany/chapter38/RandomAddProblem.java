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
public class RandomAddProblem {
    private int guess;
    private int num1;
    private int num2;
    private int answer;
    private int number1;
    private int number2;
    private int guess1;
    private int count = 0;
    
    public RandomAddProblem(){
        this.num1 = generateNum();
        this.num2 = generateNum();
        answer = num1 + num2;
    }
    public static int generateNum(){
        return (int) (Math.random() * 101);
    }
    
    public int getAnswer(){
        return answer;
    }
    
    public int getNum1(){
        return generateNum();}
    
    public int getNum2(){
        return generateNum();}
    
    public void setGuess(int guess){
        this.guess = guess;
    }
    public boolean isCorrect(String num1, String num2,String guess){
        try
        {
            number1 = Integer.parseInt(num1);
            number2 = Integer.parseInt(num2);
            guess1 = Integer.parseInt(guess);
            if (number1 + number2 == guess1)
                count++;
        }catch (Exception ex){
            
        }
        return number1 + number2 == guess1;
    }
    
    public int getCount(){
        return count;
    }
    
    public String getRating(){
        if (count == 10)
            return "Genius!!!";
        else if (count > 8)
            return "Awesome!";
        else if (count > 5)
            return "Nice!";
        else if (count > 3)
            return "Good try";
        else if (count > 1)
            return "wow...ridiculous..";
        else
            return "Loser!!!!";
    }
}
