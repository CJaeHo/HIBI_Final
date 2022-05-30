package hibi.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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
		public String navercallback() {		
			return "/WEB-INF/login/callback.jsp";
		}


		@GetMapping("/login/naver/callback2")
		@ResponseBody
		public int navercallback(
				@RequestParam(required = false) String id,
				@RequestParam(required = false) String email,
				@RequestParam(required = false) String nickname,
				@RequestParam(required = false) String chkid,
				HttpSession session
				)
		{
//			System.out.println("param_email="+email);
//			System.out.println("param_id="+id);
			
			Map<String, String> map = new HashMap<>();
//			System.out.println("map.email=" + map.get("email"));
//			System.out.println("map.id=" + map.get("id"));

			if (email != null) {
				map.put("email", email);
				map.put("id", id);
			} else {
				map.put("email", "");
				map.put("id", "");
			}
			
			int n = mapper.naverlogin(map);
			System.out.println("n=" + n);
		
			if (n==1) {
				//	세션 유지 시간
				session.setMaxInactiveInterval(60*60*6);
				//	아이디와 비번이 맞는 경우
				session.setAttribute("loginid", email);
				System.out.println("loginid="+email);
				//	로그인한 사람 닉네임
				//System.out.println("name="+name);
				session.setAttribute("loginname", email);
				session.setAttribute("saveid", chkid==null? "no":"yes");
				session.setAttribute("loginok", "yes");
				//session.setAttribute("loginstac", "ok");
				
				//return "redirect:/";				
				
			} else{
//				System.out.println("else"+email);
				//session.setAttribute("loginstac", "no");
				//if(email == null) {
					System.out.println("null");
					//return "/WEB-INF/login/callback.jsp";
					//return "/WEB-INF/login/callback.jsp";
				
			
				//} /*
				//	 * else { return "redirect:/WEB-INF/login/callback.jsp"; }
				//	 */
			}
			return n;
			
		}
	
		
		@PostMapping("/naver/insert")
		public String loginNaver(
				@RequestParam(required = false) String id,
				@RequestParam(required = false) String email,
				@RequestParam(required = false) String nickname,
				@RequestParam(required = false) String chkid,
				HttpSession session
				)
		{
			
			Map<String, String> map = new HashMap<>();
			map.put("email", email);
			map.put("nickname", nickname);
			int n = mapper.naverlogin(map);
			if (n==1) {
				//	세션 유지 시간
				session.setMaxInactiveInterval(60*60*6);
				//	아이디와 비번이 맞는 경우
				session.setAttribute("loginid", email);
				//	로그인한 사람 닉네임
				String name = mapper.getSearchName(email);
				session.setAttribute(email, email);
				session.setAttribute("nickName", name);
				session.setAttribute("saveid", chkid==null? "no":"yes");
				session.setAttribute("loginok", "yes");
				return "redirect:/";
			} else {
				System.out.println("email="+email);
				return "/WEB-INF/login/callback.jsp";
			}
			
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





