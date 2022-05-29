package hibi.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import hibi.mapper.MemberMapperInter;

@Controller
public class LoginController {
	
	@Autowired
	MemberMapperInter mapper;
		
		@GetMapping("/login/naver")
		public String naverlogin()
		{
			return "/WEB-INF/login/naverlogin.jsp";
		}
		
		@GetMapping("/login/naver/callback")
		public String navercallback()
		{
			return "/WEB-INF/login/callback.jsp";
		}
	
	
		@GetMapping("/login")
		public String loginpage()
		{
			return "/WEB-INF/login/loginpage.jsp";
		}
		
		@PostMapping("/process")
		public String loginProcess(@RequestParam String id,
				@RequestParam String pass, 
				@RequestParam (required = false) String chkid,
				HttpSession session)
		{
			//로그인 성공여부 알기
			Map<String, String> map=new HashMap<>();
			map.put("id", id);
			map.put("pass", pass);
			int n=mapper.login(map);
			if(n==1) {
				//세션 유지 시간을 지정(기본은 30분)
				session.setMaxInactiveInterval(60*60*6); //서버 안끄면 유지시간 6시간
				//아이디와 비번이 맞는 경우
				session.setAttribute("loginid", id);
				//로그인한 사람의 이름
				String name=mapper.getSearchName(id);
				session.setAttribute("loginname",name);
				session.setAttribute("saveid", chkid==null? "no":"yes");
				session.setAttribute("loginok", "yes");
				return "redirect:/"; //성공후 메인페이지로 이동

			}else {
				//아이디와 비번이 틀린경우
				return "redirect:login";
			}
		}

		@GetMapping("/logout")
		@ResponseBody
		public void logout(HttpSession session)

		{
			//세션에서 loginok삭제
			session.removeAttribute("loginok");
		}		
		
	}





