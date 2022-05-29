package hibi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class idpasswordfind {
	
	@GetMapping("/idpasswordfind")
	public String idfasswordfind()
	{
		return "/WEB-INF/login/idpasswordfind.jsp";
	}
	
}


