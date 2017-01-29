package com.niit.shoppingCart.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingCart.dao.CategoryDAO;
import com.niit.shoppingCart.dao.UserDAO;
import com.niit.shoppingCart.model.Category;
import com.niit.shoppingCart.model.User;
@Controller
public class HomeController
{
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	User user;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	
	@Autowired
	Category category;
	
	@RequestMapping("/")
	public String getLanding(Model m)
	{
		m.addAttribute("category", category);
		m.addAttribute("categoryList",this.categoryDAO.list());
		return "index";
	}

	@RequestMapping("/onLoad")
	public String backToHome(Model m)
	{
		m.addAttribute("category", category);
		m.addAttribute("categoryList",this.categoryDAO.list());
		return "index";
	}
	@RequestMapping("/register")
	public ModelAndView getRegister(Model m)
	{
		m.addAttribute("user",new User());
		ModelAndView model = new ModelAndView("signup");
		
		return model;
	}
	
	@RequestMapping(value="register/add", method=RequestMethod.POST)
	public String addUser(Model model, @Valid @ModelAttribute("user") User user)
	{
		model.addAttribute("categoryList",this.categoryDAO.list());
		userDAO.addUser(user);
		
		return "redirect:/";
	}
	
	@RequestMapping("/admin")
	public String getAdmin(Model m1)
	{
		m1.addAttribute("categoryList",this.categoryDAO.list());
		return "admin1";
	}
	@RequestMapping(value="/user")
	public String getUser(Model m)
	{
		m.addAttribute("categoryList",this.categoryDAO.list());
		return "login";
	}
	@RequestMapping(value="/aboutUs")
	public String getAboutUs(Model m)
	{
		m.addAttribute("categoryList",this.categoryDAO.list());
		return "aboutUs";
	}
	
	@RequestMapping(value="/login")
	public String  login(@RequestParam(value="error",required=false)String error,@RequestParam(value="logout",required=false) String logout,Model model)
	{
		if(error!=null)
		{
			System.out.println("Error..");
			model.addAttribute("loginerror","...Invalid username and password");
		}
		
		if(logout!=null)
		{
			System.out.println("Logout called..");
			model.addAttribute("loginmsg","...you have been logged out");
		}
		
		return "login";
	}
}
