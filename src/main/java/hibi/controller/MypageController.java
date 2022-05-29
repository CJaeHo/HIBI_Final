package hibi.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	// 메인
	@GetMapping("/")
	public String mypageMain()
	{
		return "/sub3/mypage/mypageMain";
	}
	
	@GetMapping("/badge")
	public String badge() {
		return "/sub4/mypage/badge";
	}

	@GetMapping("/commentList")
	public String commentList() {
		return "/sub3/mypage/commentList";
	}
	@GetMapping("/commentList2")
	public String commentList2() {
		return "/sub3/mypage/commentList2";
	}
	
	@GetMapping("/likeList")
	public String likeList() {
		return "/sub3/mypage/likeList";
	}
	
	@GetMapping("/modifyMyInfo")
	public String modifyMyInfo() {
			
		return "/sub4/mypage/modifyMyInfo";
	}

	@GetMapping("/productList")
	public String productList() {
		return "/sub3/mypage/productList";
	}
	
	@GetMapping("/secession")
	public String secession() {
		return "/sub5/mypage/secession";
	}
	
}
