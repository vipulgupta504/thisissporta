package sporta;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SportaController {
	
		@RequestMapping("/")
		public String home() {
			return "index";
		}
		
		@RequestMapping("/head")
		public String head() {
			return "head";
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
		
		@RequestMapping("/products")
		public String products() {
			return "products";
		}
		
		@RequestMapping("/signup")
		public String signup() {
			return "signup";
		}
		
		@RequestMapping("/login")
		public String login() {
			return "login";
		}
	}

