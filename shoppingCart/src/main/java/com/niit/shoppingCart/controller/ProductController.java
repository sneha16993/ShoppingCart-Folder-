package com.niit.shoppingCart.controller;
import javax.validation.Valid;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

import com.niit.shoppingCart.dao.CategoryDAO;
import com.niit.shoppingCart.dao.CategoryDAOImpl;
import com.niit.shoppingCart.dao.ProductDAO;
import com.niit.shoppingCart.dao.SupplierDAO;
import com.niit.shoppingCart.model.Category;
import com.niit.shoppingCart.model.Product;
import com.niit.shoppingCart.model.Supplier;

@Controller
public class ProductController {
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	Product product;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@Autowired
	Category category;
	
	@Autowired
	Supplier supplier;
	
	private Path path;
	

	@RequestMapping("/product")
	public ModelAndView getRegister(Model m)
	{
		m.addAttribute("product",new Product());
		ModelAndView model = new ModelAndView("product");
		return model;
	}
	
	@RequestMapping(value="product/add", method=RequestMethod.POST)
	public String addProduct(Model model, @Valid @ModelAttribute("product") Product product,HttpServletRequest request)
	{
		System.out.println(product);
		Category category=categoryDAO.getByName(product.getCategory().getCname());
		System.out.println(category);
		categoryDAO.addCategory(category);
		
		Supplier supplier=supplierDAO.getByName(product.getSupplier().getSname());
		supplierDAO.addSupplier(supplier);
		
		product.setCategory(category);
		product.setSupplier(supplier);
		
		product.setCategory_id(category.getCid());
		product.setSupplier_id(supplier.getSid());
		
		productDAO.addProduct(product);
		
		
		MultipartFile file=product.getImage();
		String rootDirectory=request.getSession().getServletContext().getRealPath("/");
		path=Paths.get(rootDirectory +"\\WEB-INF\\resources\\images\\"+product.getPid()+".jpg");
		
		if(file!=null && !file.isEmpty())
		{
			try 
			{
				file.transferTo(new File(path.toString()));
				System.out.println("Image Uploaded");
			}
			catch(Exception e)
			{
				e.printStackTrace();
				throw new RuntimeException("image not saved");
			}
		}
		return "redirect:/product";
		
	}
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String listProduct(Model model)
	{
		model.addAttribute("product",new Product());
		model.addAttribute("category",new Category());
		model.addAttribute("supplier",new Supplier());
		model.addAttribute("productList",this.productDAO.list());
		model.addAttribute("categoryList",this.categoryDAO.list());
		model.addAttribute("supplierList",this.supplierDAO.list());
		return "product";
	
	}
	@RequestMapping("product/remove/{pid}")
	public String deleteProduct(@PathVariable("pid") String id, ModelMap model) throws Exception {

		try {
			productDAO.delete(id);
			model.addAttribute("message", "Successfully Deleted");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/product";
	}
	

	@RequestMapping("product/edit/{pid}")
	public String editProduct(@PathVariable("pid") String id, Model model) {
		System.out.println("editProduct");
		model.addAttribute("product", this.productDAO.getProduct(id));
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());
		return "product";
	}
	

}
