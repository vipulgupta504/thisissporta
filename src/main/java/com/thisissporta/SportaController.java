package com.thisissporta;

	
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.ModelAndViewMethodReturnValueHandler;

import com.thisissporta.category.Category;
import com.thisissporta.category.CategoryService;
import com.thisissporta.product.Product;
import com.thisissporta.product.ProductService;
import com.thisissporta.user.User;
import com.thisissporta.user.UserService;
import com.thisissporta.userrole.UserRoleService;

	@Controller
	public class SportaController
	{
		
		@Autowired
		CategoryService cs;
		
		@Autowired
		ProductService ps;
		
		@Autowired
		UserService us;
		
		@Autowired
		UserRoleService urs;
		
		@Autowired
		ServletContext context;
		
			@RequestMapping("/")
			public String home() {
				urs.generateUserRoles();
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
			public ModelAndView signup()
			{
				ModelAndView mav = new ModelAndView("signup");
				
				mav.addObject("User", new User());
				
				return mav;
			}
			
			@RequestMapping("/AddUserToDB")
			public ModelAndView AddUserToDB( @Valid @ModelAttribute("User") User u , BindingResult bi )
			{
				ModelAndView mav = new ModelAndView("signup");
				
				if( bi.hasErrors() )
					mav.addObject("User", u);
				else
				{
					if( !u.getPassword().equals(u.getCPassword()) )
					{
						mav.addObject("error", "Password Mismatch");
						mav.addObject("User", u);
					}
					else
					{
						List<User> list = us.listAll();
						
						boolean check = false;
						
						for( User ul : list )
						{
							if( ul.getUsername().equals(u.getUsername()) )
							{
								check = true;
								break;
							}
						}
						
						if( check )
						{
							mav.addObject("error", "Username Already Exists");
							mav.addObject("User", u);
						}
						else
						{
							us.insert(u);
							mav.addObject("success", "User Added Succesfully");
							mav.addObject("User", new User());
						}
					}
				}
					
				return mav;
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
				
				Category c = cs.getCategory(cid);
				
				cs.delete(cid);
				
				List<Product> list = ps.listAll();
				
				for( Product p : list )
				{
					if( p.getProductCategory().equals(c.getCategoryName()) )
					{
						p.setProductCategory("-");
						ps.update(p);
					}
				}
				
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
				
				Category c1 = cs.getCategory(c.getId());
				
				List<Product> list = ps.listAll();
				
				for( Product p : list )
				{
					if( p.getProductCategory().equals(c1.getCategoryName()) )
					{
						p.setProductCategory(c.getCategoryName());
						ps.update(p);
					}
				}
				
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
				
				mav.addObject("AllCategories", cs.getAllCategories());
				
				return mav;
			}
			
			@RequestMapping(value="/AddProductToDB",method=RequestMethod.POST)
			public String AddProductToDB( @ModelAttribute("Product") Product p ) {
				
				
				ps.insert(p);
				
				Product p1 = ps.getProductWithMaxId();

				System.out.println(p1.getId());
				
				try {
					String path = context.getRealPath("/");

					System.out.println(path);

					File directory = null;
					
					if (p.getProductFile().getContentType().contains("image")) 
					{
						directory = new File(path + "\\resources\\images");

						System.out.println(directory);
						
						byte[] bytes = null;
						File file = null;
						bytes = p.getProductFile().getBytes();

						if (!directory.exists())
							directory.mkdirs();
						
						/* create file on server if not present already*/
						
						file = new File(directory.getAbsolutePath() + System.getProperty("file.separator") + "image_"
								+ p1.getId() + ".jpg");

						System.out.println(file.getAbsolutePath());

						BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(file));
						stream.write(bytes);
						stream.close();

					}

					p1.setProductImage("resources/images/image_" + p1.getId() + ".jpg");

					ps.update(p1);
				} catch (Exception e) {
					e.printStackTrace();
				}
						
				return "redirect:/products";
			}
			
			@RequestMapping("/updateproduct/{pid}")
			public ModelAndView updateproduct( @PathVariable("pid") int pid ) {
				
				ModelAndView mav = new ModelAndView("updateproduct");
				
				Product p = ps.getProduct(pid);
				
				mav.addObject("Product", p);
				mav.addObject("AllCategories", cs.getAllCategories());
				
				return mav;
			}
			
			@RequestMapping(value="/UpdateProductToDB", method=RequestMethod.POST)
			public String UpdateProductToDB( @ModelAttribute("Product") Product p ) {
				
				try {
					String path = context.getRealPath("/");

					System.out.println(path);

					File directory = null;

					

					if (p.getProductFile().getContentType().contains("image")) {
						directory = new File(path + "\\resources\\images");

						System.out.println(directory);

						byte[] bytes = null;
						File file = null;
						bytes = p.getProductFile().getBytes();

						if (!directory.exists())
							directory.mkdirs();

						file = new File(directory.getAbsolutePath() + System.getProperty("file.separator") + "image_"
								+ p.getId() + ".jpg");

						System.out.println(file.getAbsolutePath());

						BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(file));
						stream.write(bytes);
						stream.close();

					}

					p.setProductImage("resources/images/image_" + p.getId() + ".jpg");

					ps.update(p);
				} catch (Exception e) {
					e.printStackTrace();
				}
				
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
			
			
			@RequestMapping(value = "/loginpage", method = RequestMethod.GET)
			public ModelAndView login() {

				ModelAndView mav = new ModelAndView("login");

				return mav;

			}

			@RequestMapping(value = "/logout", method = RequestMethod.GET)
			public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
				Authentication auth = SecurityContextHolder.getContext().getAuthentication();
				if (auth != null) {

					System.out.println("In LogOut");
					new SecurityContextLogoutHandler().logout(request, response, auth);

				}

				return "index";
			}

		}

