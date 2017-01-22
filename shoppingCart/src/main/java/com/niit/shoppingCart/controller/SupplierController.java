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


import com.niit.shoppingCart.dao.SupplierDAO;
import com.niit.shoppingCart.model.Category;
import com.niit.shoppingCart.model.Supplier;
import com.niit.shoppingCart.util.Util;

@Controller
public class SupplierController {
	@Autowired
	SupplierDAO supplierDAO;
	
	@Autowired
	Supplier supplier;
	
//	@RequestMapping("/Supplier")
//	public String getSupplier()
//	{
//		return "Supplier";
//	}
	
//	@RequestMapping("/supplier")
//	public ModelAndView getRegister(Model m)
//	{
//		m.addAttribute("supplier",new Supplier());
//		ModelAndView model = new ModelAndView("supplier");
//		
//		return model;
//	}
	
	@RequestMapping(value="supplier/add", method=RequestMethod.POST)
	public String addUser(Model model, @Valid @ModelAttribute("supplier") Supplier supplier)
	{
		Util util=new Util();
		String id=util.removeComma(supplier.getSid());
		supplier.setSid(id);
		supplierDAO.addSupplier(supplier);
		
		return "redirect:/supplier";
	}
	@RequestMapping(value = "/supplier", method = RequestMethod.GET)
	public ModelAndView newSupplier(Model m1) {
		m1.addAttribute("supplier", new Supplier());
		List<Supplier> suppliers = supplierDAO.list();
//		String json = new Gson().toJson(suppliers);
		ModelAndView model = new ModelAndView("supplier");
		m1.addAttribute("supplierList",this.supplierDAO.list());
//		model.addObject("suppliers", json);
		return model;
	}
	@RequestMapping("supplier/remove/{sid}")
	public String deleteSupplier(@PathVariable("sid") String id, ModelMap model) throws Exception {

		try {
			supplierDAO.delete(id);
			model.addAttribute("message", "Successfully Deleted");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/supplier";
	}
	

	@RequestMapping("supplier/edit/{sid}")
	public String editSupplier(@PathVariable("sid") String id, Model model) {
		System.out.println("editSupplier");
		model.addAttribute("supplier", this.supplierDAO.getSupplier(id));
		model.addAttribute("listSupplier", this.supplierDAO.list());
		return "supplier";
	}
	

}
