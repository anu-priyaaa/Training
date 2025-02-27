package org.example;

import org.junit.jupiter.api.*;

public class SampleTest2 {

    @BeforeAll
    public static void beforeAll(){
        System.out.println("Before All test cases");
    }

    @AfterAll
    public static void AfterAll(){
        System.out.println("After All test cases");
    }
    @BeforeEach
    public void setUp(){
        System.out.println("DB Connected");
    }
    @AfterEach
    public void tearDown(){
        System.out.println("DB Connected");
    }

    @Test
    public void myTest1(){
        System.out.println("Test 1 executed");
    }


    @Test
    public void myTest2() {
        System.out.println("Test 2 Executed");

    }
}
