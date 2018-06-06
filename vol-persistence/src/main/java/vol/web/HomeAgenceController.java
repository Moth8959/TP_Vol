package vol.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
@RequestMapping("/agence")
public class HomeAgenceController {
	
	@GetMapping("/")
	public String home() {
		return "/agence/homeAgence";
	}

}
