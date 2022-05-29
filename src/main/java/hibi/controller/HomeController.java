package hibi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	//메인
	@GetMapping("/")
	public String home()
	{
		return "/ml/main/contents";
	}
	
}
