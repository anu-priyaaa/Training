package com.mindsprint.project1.oops;

public class Student {
    int id;
    String name;
    String email;
    String Address;
    public Student(){} //default constructor
    public Student(String name, String email, String address) {

        this.id=(int) Math.round(Math.random()*10000);
        this.name = name;
        this.email = email;
        Address = address;
    }

    public Student(int id, String name, String email, String address) {
        this.id = id;
        this.name = name;
        this.email = email;
        Address = address;
    }

    public static void main(String[] args) {
        Student s1=new Student();
        Student s2=new Student ("Anu", "email:anu@gmail.com","US");
        Student s3=new Student ("10001","Priya","priya@gmail.com");
    }
}
