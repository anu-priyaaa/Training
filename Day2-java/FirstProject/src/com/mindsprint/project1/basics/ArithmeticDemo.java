package com.mindsprint.project1.basics;

import java.util.Scanner;
public class ArithmeticDemo {
    public static void main(String [] args ){
        Scanner Scanner = new Scanner(System.in);
        System.out.println("Enter First Number ");
        int num1=Scanner.nextInt();
        System.out.println("Enter Second Number ");
        int num2=Scanner.nextInt();
        System.out.println("Addition:"+(num1+num2));
        System.out.println("Subtract:"+(num1-num2));
        System.out.println(num1+" * " + num2+ "=" +(num1*num2));
        System.out.println(num1+" / " + num2+ "=" +(num1/num2));

    }
}
