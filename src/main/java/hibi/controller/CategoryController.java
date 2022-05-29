package hibi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/category")
public class CategoryController {

	@GetMapping("/elecdevices")
	public String elec()
	{
		return "/sub/category/elecdevices";
	}
	
	@GetMapping("/living")
	public String living()
	{
		return "/sub/category/living";
	}
	
	@GetMapping("/hobby")
	public String hobby()
	{
		return "/sub/category/hobby";
	}
	
	@GetMapping("/fashion")
	public String fashion()
	{
		return "/sub/category/fashion";
	}
	
	@GetMapping("/pet")
	public String pet()
	{
		return "/sub/category/pet";
	}
	
	@GetMapping("/beauty")
	public String beauty()
	{
		return "/sub/category/beauty";
	}
	
	@GetMapping("/food")
	public String food()
	{
		return "/sub/category/food";
	}
	
	@GetMapping("/talent")
	public String talent()
	{
		return "/sub/category/talent";
	}
}
