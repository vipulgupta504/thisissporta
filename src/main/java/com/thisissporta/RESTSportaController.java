package com.thisissporta;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.thisissporta.cart.Cart;
import com.thisissporta.cart.CartService;
import com.thisissporta.product.Product;
import com.thisissporta.product.ProductService;
import com.thisissporta.user.UserService;
import com.thisissporta.userrole.UserRoleService;

@CrossOrigin(origins = "http://localhost:8080", maxAge = 3600)
@RestController
public class RESTSportaController {

	@Autowired
	ProductService ps;

	@Autowired
	UserService us;

	@Autowired
	UserRoleService urs;

	@Autowired
	ServletContext context;

	@Autowired
	CartService cs;
	
	@CrossOrigin
	@RequestMapping(value = "/flows/deleteFromCart/", method = RequestMethod.POST)
	public ResponseEntity<String> deleteFromCart(HttpServletRequest request, HttpServletResponse response,
			@RequestBody String inputdata, UriComponentsBuilder ucBuilder) {

		int cartId = Integer.parseInt(inputdata);

		cs.delete(cartId);

		List<Cart> list = cs.getAllProducts();

		JSONArray jarr = new JSONArray();

		String user = "";

		System.out.println("In Fetch All Items");

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null && !auth.getName().equals("anonymousUser")) {
			user = auth.getName();
		}

		for (Cart item : list) {

			if (item.getUserName().equals(user)) {
				JSONObject jobj = new JSONObject();

				jobj.put("ProductID", item.getProductID());
				jobj.put("ProductName", item.getName());
				jobj.put("ProductPrice", item.getPrice());
				Product p = ps.getProduct(Integer.parseInt(item.getProductID()));

				jobj.put("ProductImage", p.getProductImage());
				jobj.put("ProductQty", item.getQty());
				jobj.put("CartId", item.getCartID());

				jarr.add(jobj);
			}

		}

		System.out.println(jarr);

		return new ResponseEntity<String>(jarr.toString(), HttpStatus.CREATED);
	}

	@CrossOrigin
	@RequestMapping(value = "/flows/fetchAllItems/", method = RequestMethod.POST)
	public ResponseEntity<String> fetchAllItems(HttpServletRequest request, HttpServletResponse response,
			UriComponentsBuilder ucBuilder) {

		List<Cart> list = cs.getAllProducts();

		JSONArray jarr = new JSONArray();

		String user = "";

		System.out.println("In Fetch All Items");

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null && !auth.getName().equals("anonymousUser")) {
			user = auth.getName();
		}

		for (Cart item : list) {

			if (item.getUserName().equals(user)) 
			{
			
				JSONObject jobj = new JSONObject();

				jobj.put("ProductID", item.getProductID());
				jobj.put("ProductName", item.getName());
				jobj.put("ProductPrice", item.getPrice());

				Product p = ps.getProduct(Integer.parseInt(item.getProductID()));

				/*test when product not found*/
				
				if( p == null || p.getProductImage() == null )
					jobj.put("ProductImage", "");
				else

				jobj.put("ProductImage", p.getProductImage());
				jobj.put("ProductQty", item.getQty());
				jobj.put("CartId", item.getCartID());
				jobj.put("ShippingAddress", item.getAddress());
				jobj.put("BillingAddress", item.getBillingAddress());
				

				jarr.add(jobj);
			}

		}

		System.out.println(jarr);

		return new ResponseEntity<String>(jarr.toString(), HttpStatus.CREATED);
	}

	@CrossOrigin
    @RequestMapping(value = "/flows/updateAddresses/", method = RequestMethod.POST)
    public ResponseEntity<String> updateAddresses(HttpServletRequest request, HttpServletResponse response, @RequestBody String inputdata, UriComponentsBuilder ucBuilder) 
	{
        JSONParser jpar = new JSONParser();
        
        JSONObject jobj = new JSONObject();
        
        try
        {
        	jobj = (JSONObject)jpar.parse(inputdata);
        }
		catch(Exception e)
        {
			System.out.println("ERROR READING ADDRESSES");
        }
        
        System.out.println(jobj.get("shippingAddress").toString());
        System.out.println(jobj.get("billingAddress").toString());
        
        List<Cart> list = cs.getAllProducts();
		
		String user = "";
		
		System.out.println("In Update Addresses");
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    	if (auth != null && !auth.getName().equals("anonymousUser"))
	    	{    
	    		user = auth.getName();
	    	}
		
	    	System.out.println(list);
	    	
	    	for( Cart item:list )
	    	{
			
	    		System.out.println(user);
	    		System.out.println(item.getUserName());
	    		
	    		System.out.println( item.getUserName().equals(user) );
	    		
	    		if( item.getUserName().equals(user) )
	    		{
	    			item.setAddress(jobj.get("shippingAddress").toString());
	    			item.setBillingAddress(jobj.get("billingAddress").toString());
	    			
	    			cs.update(item);
	    		}
			
	    	}
		 
	    	JSONObject res = new JSONObject();
	    	
	    	res.put("status", "updated");
	    	
        return new ResponseEntity<String>(res.toJSONString(), HttpStatus.CREATED);
    }
	
	@CrossOrigin
    @RequestMapping(value = "/flows/deleteAllFromCart/", method = RequestMethod.POST)
    public ResponseEntity<String> deleteAllFromCart(HttpServletRequest request, HttpServletResponse response, UriComponentsBuilder ucBuilder) 
	{
        List<Cart> list = cs.getAllProducts();
		
		String user = "";
		
		System.out.println("In Update Addresses");
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    	if (auth != null && !auth.getName().equals("anonymousUser"))
	    	{    
	    		user = auth.getName();
	    	}
		
	    	System.out.println(list);
	    	
	    	for( Cart item:list )
	    	{
			
	    		if( item.getUserName().equals(user) )
	    		{
	    			cs.delete(item.getCartID());
	    		}
			
	    	}
		 
	    	JSONObject res = new JSONObject();
	    	
	    	res.put("status", "updated");
	    	
        return new ResponseEntity<String>(res.toJSONString(), HttpStatus.CREATED);
    
	}
	
	
	
	
}
