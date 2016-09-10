package com.niit.frontend.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;

@Controller
public class AdminController {

	@Autowired
	private Category category;

	@Autowired
	private Product product;

	@Autowired
	private Supplier supplier;

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private SupplierDAO supplierDAO;

	@RequestMapping("/manageCategories")
	public ModelAndView Categories() {
		ModelAndView mv = new ModelAndView("/home");// /home will change to asur
													// home page name
		mv.addObject("Category", category);
		mv.addObject("isAdminClickedCategories", "true");
		mv.addObject("CategoryList", categoryDAO.list());
		return mv;
	}

	@RequestMapping("/manageProducts")
	public ModelAndView Products() {
		ModelAndView mv = new ModelAndView("/home");
		mv.addObject("Product", product);
		mv.addObject("isAdminClickedProducts", "true");
		mv.addObject("ProductList", productDAO.list());
		return mv;
	}

	@RequestMapping("/manageSuppliers")
	public ModelAndView Suppliers() {
		ModelAndView mv = new ModelAndView("/home");
		mv.addObject("Supplier", supplier);
		mv.addObject("isAdminClickedSuppliers", "true");
		mv.addObject("SupplierList", supplierDAO.list());
		return mv;
	}

	@RequestMapping("/editcategory")
	public ModelAndView update() {
		System.out.println("In edit prod page");
		ModelAndView mv = new ModelAndView("editcategory");
		return mv;
	}

	@ModelAttribute
	public Category returnUpdate() {
		return new Category();
	}

	@RequestMapping(value = "/ecat", method = RequestMethod.POST)
	public ModelAndView updateCategory(@ModelAttribute("category") Category objct, BindingResult result,
			HttpServletRequest request) throws IOException {
		ModelAndView mv = new ModelAndView("adminhome");
		categoryDAO.update(objct);
		return mv;
	}

	@RequestMapping("/editsupplier")
	public ModelAndView update1() {
		System.out.println("In edit prod page");
		ModelAndView mv = new ModelAndView("editsupplier");
		return mv;
	}

	@ModelAttribute
	public Supplier returnUpdate1() {
		return new Supplier();
	}

	@RequestMapping(value = "/esup", method = RequestMethod.POST)
	public ModelAndView updateSupplier(@ModelAttribute("supplier") Supplier objct, BindingResult result,
			HttpServletRequest request) throws IOException {
		ModelAndView mv = new ModelAndView("adminhome");
		supplierDAO.update(objct);
		return mv;
	}

	@ModelAttribute
	public Product returnObject() {
		return new Product();
	}

	@RequestMapping(value = "/aprod", method = RequestMethod.POST)
	public ModelAndView createProduct(@ModelAttribute("product") Product p1, @RequestParam("image") MultipartFile file,
			Model model, BindingResult result, HttpServletRequest request) throws IOException {

		System.out.println("in add prod");
		ModelAndView mv = new ModelAndView("product");
		@SuppressWarnings("unused")
		String filename;
		@SuppressWarnings("unused")
		byte[] bytes;
		System.out.println("image");
		MultipartFile image = p1.getImage();
		Path path;
		path = Paths.get("F://maven//Frontend//src//main//webapp//resources//images//" + p1.getId() + ".jpg");
		// String path =
		// request.getSession().getServletContext().getRealPath("/resources/images/"
		// + user.getUser_id() + ".jpg");
		System.out.println("Path = " + path);
		System.out.println("File name = " + p1.getImage().getOriginalFilename());
		if (image != null && !image.isEmpty()) {
			try {
				image.transferTo(new File(path.toString()));
				System.out.println("Image Saved in:" + path.toString());
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("Image not saved");
			}
		}
		Supplier supplier = supplierDAO.get1(((Supplier) product.getSupplier()).getName());
		supplierDAO.save(supplier);

		    Category category = categoryDAO.get(product.getCategory().getName());
		    categoryDAO.save(category);

		    product.setCategory(category);

		    product.setSupplier(supplier);
		    
		    
		return mv;
	}
	
	
	

}
