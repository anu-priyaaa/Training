package com.mindsprint.project1.StudentGrades;

public class Student {
    String name;
    int[] grades;

    public Student(String name, int[] grades) {
        this.name = name;
        this.grades = grades;
    }

    public double calculateAverage() {
        int sum = 0;
        for (int grade : grades) {
            sum += grade;
        return(double)sum/grades.length;
    }    public void displayInfo()
    {
        System.out.println("Student Name:"+ name);
        System.out.println("Average Grade:"+calculateAverage());
    }    public static void main(String[] args)
    {        int [] grades={85,88,90,99,92};
        Student student=new Student("nidhi",grades);
    }
}
}
