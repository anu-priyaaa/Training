package com.mindsprint.sample;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
public class MainController {
}


@RestController public class MainController {
    @GetMapping("/Hello")    public static String main(String[] args) {
        return "Hello From My New Springboot App";
    }
    @GetMapping("/employee")
    public Employees getEMployees(){
        return new Employee(1, "Anu Priya", "IT", 9748343);    }}