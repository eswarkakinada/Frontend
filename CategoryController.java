package com.niit.controller;

import java.util.Locale.Category;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

public class CategoryController {

	@RequestMapping(value="/category/add",method = RequestMethod.POST)
 public String	addCategory(@ModelAttribute("category")Category category){
	
		
	
	ModelAndView mv=new ModelAndView("category");
		
		
		
	return null;
		
		
	}
	
	
	
	
}
