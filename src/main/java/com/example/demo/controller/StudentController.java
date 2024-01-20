package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.bean.Student;
import com.example.demo.dao.StudentRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {
	
	
	@GetMapping("/register")
	public String register() {
		
		return "register";
	}
	
	@Autowired
	StudentRepository sr;
	
	@PostMapping("/register")
	public String registerData(Student s) {
		sr.save(s);
		return "redirect:/index";
	}
	
	@GetMapping("/update")
	public String update(Student s,HttpSession session) {
		
		session.setAttribute("Student", s);
		return "update";
	}
	
	@PostMapping("/update")
	public String updateData(Student s,HttpSession session) {
		Optional<Student> optional=sr.findById(s.getId());
		Student student=optional.get();
		student.setName(s.getName());
		student.setEmail(s.getEmail());
		student.setPassword(s.getPassword());
		student.setMobileNo(s.getMobileNo());
		
		student.setAddress(s.getAddress());
		sr.save(student);
		
	    return "redirect:/index";
	}
	
	@RequestMapping("/delete")
	public String delete(Student s) {
		System.out.println("/delete");
		System.out.println(s.getId());
		sr.deleteById(s.getId());
		return "redirect:/index";
		
	}
	
	@RequestMapping("/index")
	public String show(HttpSession session) {
		
		List<Student> student=new ArrayList<>();
		for(Student students:sr.findAll()) {
			student.add(students);
		}
			
		session.setAttribute("Student", student);
		
         return "index";
		
	}

}
