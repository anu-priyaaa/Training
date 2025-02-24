package com.mindsprint.project1.basics;

import java.util.Scanner;

public class Ternary {
    public static void main(String [] args) {
        System.out.println("Enter the selling price");
        Scanner Scanner = new Scanner(System.in);
        float  sp=Scanner.nextFloat();
        System.out.println("Enter the cost price");
        float  cp=Scanner.nextFloat();
        String result = sp >= cp ? "profit " : "loss";
        String result1= sp <= cp ? "profit " : "loss" ;
        System.out.println("Result is "+result1);
        System.out.println("Result is "+result);

    }

}
