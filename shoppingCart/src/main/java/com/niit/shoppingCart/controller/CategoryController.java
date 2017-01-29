package com.niit.shoppingCart.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.niit.shoppingCart.dao.CategoryDAO;
import com.niit.shoppingCart.model.Category;
import com.niit.shoppingCart.util.Util;

@Controller
public class CategoryController {
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	Category category;
	
//	@RequestMapping("/category")
//	public String getCategory()
//	{
//		return "category";
//	}
	
//	@RequestMapping("/category")
//	public ModelAndView getRegister(Model m)
//	{
//		m.addAttribute("category",new Category());
//		ModelAndView model = new ModelAndView("category");
//		
//		return model;
//	}
//	
	@RequestMapping(value="category/add", method=RequestMethod.POST)
	public String addCategory(Model model, @Valid @ModelAttribute("category") Category category)
	{
		Util util=new Util();
		String id=util.removeComma(category.getCid());
		category.setCid(id);
		categoryDAO.addCategory(category);
		
		return "redirect:/category";
	}
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public ModelAndView newCategory(Model m1) {
		m1.addAttribute("category", new Category());
		List<Category> categories = categoryDAO.list();
//		String json = new Gson().toJson(categories);
		ModelAndView model = new ModelAndView("category");
		m1.addAttribute("categoryList",this.categoryDAO.list());
//		model.addObject("categories", json);
		return model;
	}
	@RequestMapping("category/remove/{cid}")
	public String deleteCategory(@PathVariable("cid") String id, ModelMap model) throws Exception {

		try {
			categoryDAO.delete(id);
			model.addAttribute("message", "Successfully Deleted");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/category";
	}
	

	@RequestMapping("category/edit/{cid}")
	public String editCategory(@PathVariable("cid") String id, Model model) {
		System.out.println("editCategory");
		model.addAttribute("category", this.categoryDAO.getCategory(id));
		model.addAttribute("categoryList", this.categoryDAO.list());
		return "category";
	}
	

}
