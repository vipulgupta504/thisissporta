package com.thisissporta;

	
	import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.ModelAndViewMethodReturnValueHandler;

import com.thisissporta.category.Category;
import com.thisissporta.category.CategoryService;
import com.thisissporta.product.Product;
import com.thisissporta.product.ProductService;

	@Controller
	public class SportaController
	{
		
		@Autowired
		CategoryService cs;
		
		@Autowired
		ProductService ps;
		
			@RequestMapping("/")
			public String home() {
				return "index";
			}
			
			@RequestMapping("/head")
			public String head() {
				return "head";
			}
			
			@RequestMapping("/head-meta")
			public String head_meta() {
				return "head-meta";
			}
			
			@RequestMapping("/index")
			public String index() {
				return "index";
			}
			
			
			@RequestMapping("/aboutus")
			public String abt() {
				return "aboutus";
			}
			
			@RequestMapping("/contactus")
			public String contactus() {
				return "contactus";
			}
			
			@RequestMapping("/signup")
			public String signup() {
				return "signup";
			}
			
			@RequestMapping("/login")
			public String login() {
				return "login";
			}
			
			@RequestMapping("/categories")
			public ModelAndView categories() {
				ModelAndView mav = new ModelAndView("categories");
				
				JSONArray jarr = new JSONArray();
				
				List<Category> list = cs.getAllCategories();
				
				for( Category c:list )
				{
					JSONObject jobj = new JSONObject();
					
					jobj.put("CategoryId", c.getId());
					jobj.put("CategoryName", c.getCategoryName());
					
					jarr.add(jobj);
				}
				
				mav.addObject("Categories", jarr.toJSONString());
				
				return mav;
			}
			
			@RequestMapping("/addcategory")
			public ModelAndView addcategory() {
				
				ModelAndView mav = new ModelAndView("addcategory");
				
				mav.addObject("Category", new Category());
				
				return mav;
			}
			
			@RequestMapping("/AddCategoryToDB")
			public String AddCategoryToDB( @ModelAttribute("Category") Category c ) {
				
				cs.insert(c);
				
				return "redirect:/categories";
			}
			
			@RequestMapping("/DeleteCategoryFromDB/{cid}")
			public String DeleteCategoryFromDB( @PathVariable("cid") int cid ) {
				
				cs.delete(cid);
				
				return "redirect:/categories";
			}
			
			@RequestMapping("/updatecategory/{cid}")
			public ModelAndView updatecategory( @PathVariable("cid") int cid ) {
				
				ModelAndView mav = new ModelAndView("updatecategory");
				
				Category c = cs.getCategory(cid);
				
				mav.addObject("Category", c);
				
				return mav;
			}
			
			@RequestMapping("/UpdateCategoryToDB")
			public String UpdateCategoryToDB( @ModelAttribute("Category") Category c ) {
				
				cs.update(c);
				
				return "redirect:/categories";
			}
			
			@RequestMapping("/products")
			public ModelAndView products() {
				ModelAndView mav = new ModelAndView("products");
				
				JSONArray jarr = new JSONArray();
				
				List<Product> list = ps.listAll();
				
				for( Product p:list )
				{
					JSONObject jobj = new JSONObject();
					
					jobj.put("ProductId", p.getId());
					jobj.put("ProductName", p.getProductName());
					jobj.put("ProductPrice", p.getProductPrice());
					jobj.put("ProductImage", p.getProductImage());
					jobj.put("ProductCategory", p.getProductCategory());
					
					jarr.add(jobj);
				}
				
				mav.addObject("Products", jarr.toJSONString());
				
				return mav;
			}
			
			@RequestMapping("/addproduct")
			public ModelAndView addproduct() {
				
				ModelAndView mav = new ModelAndView("addproduct");
				
				mav.addObject("Product", new Product());
				
				return mav;
			}
			
			@RequestMapping("/AddProductToDB")
			public String AddProductToDB( @ModelAttribute("Product") Product p ) {
				
				ps.insert(p);
				
				return "redirect:/products";
			}
			
			@RequestMapping("/updateproduct/{pid}")
			public ModelAndView updateproduct( @PathVariable("pid") int pid ) {
				
				ModelAndView mav = new ModelAndView("updateproduct");
				
				Product p = ps.getProduct(pid);
				
				mav.addObject("Product", p);
				
				return mav;
			}
			
			@RequestMapping("/UpdateProductToDB")
			public String UpdateProductToDB( @ModelAttribute("Product") Product p ) {
				
				ps.update(p);
				
				return "redirect:/products";
			}
			
			@RequestMapping("/DeleteProductFromDB/{pid}")
			public String DeleteProductFromDB( @PathVariable("pid") int pid ) {
				
				ps.delete(pid);
				
				return "redirect:/products";
			}
			
			@RequestMapping("/viewproduct/{pid}")
			public ModelAndView viewProduct( @PathVariable("pid") int pid ) {
				
				ModelAndView mav=new ModelAndView("viewproduct");
				
                mav.addObject("Product", ps.getProduct(pid));
				
				return mav;
						
						
			}
		}

