package hibi.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.w3c.dom.Document;

import hibi.mapper.MemberMapperInter;


@Controller
public class idpasswordfind {
	
	@Autowired
	MemberMapperInter mapper;
	
	
	@GetMapping("/idpasswordfind")
	public String idfasswordfind()
	{
		
		return "/WEB-INF/login/idpasswordfind.jsp";
	}
	
	@PostMapping("/idpasswordfinddo")	
	public String idfasswordfinddo (@RequestParam String nickName,
			@RequestParam String userEmail, 
		
			@RequestParam (required = false) String chkid,
			Model model)
	{
		

		//로그인 성공여부 알기
		Map<String, String> map=new HashMap<>();
		map.put("nickName", nickName);
		map.put("userEmail", userEmail);
		String n=mapper.userfind(map);
		if(n!=null) {
			
			model.addAttribute("myid", n);
		
			return	"/WEB-INF/login/idpasswordfinddo.jsp";
		
		}
		else {
			//닉네임과 이메일이 틀린경우
			return "redirect:idpasswordfind";
		}
		
	}
}

