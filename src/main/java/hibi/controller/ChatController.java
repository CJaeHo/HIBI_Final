package hibi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChatController {

	@GetMapping("/chat")
	public String rooot() {
		return "/WEB-INF/chat/chat.jsp";}
	}
//
//	@SessionAttributes({"loginUser","master2","rankPic","admin"}) // Model에 loginUser라는 키값으로 객체가 추가되면 자동으로 세션에 추가하라는 의미의 어노테이션
//	@Controller
//	public class UserContoller {
//		@Autowired
//		private UserService uService;
//		/* 채팅 */
//		@Autowired
//		private ChatSession cSession;
//		/**
//		 * 1. 로그인 세션 메소드 ( 암호화 처리 )
//		 *
//		 * @param u
//		 * @param model
//		 * @return
//		 */
//		@RequestMapping(value = "login.do", method = {RequestMethod.GET, RequestMethod.POST})
//		public String userLogin(User u, Model model, HttpServletRequest request) { // view에 전달하는 데이터를 Model에 담는다.
//
//			User loginUser = uService.loginUser(u);
//			/* 채팅 */
//			// 현재 로그인 한 User 채팅 Session ArrayList에 추가.
//			cSession.addLoginUser(loginUser.getEmail());
//		}
//		/**
//		 * 2. 로그아웃 세션 메소드 (@SessionAttributes가 있기 때문에 session.invalidate()가 먹히지 않으므로)
//		 *
//		 * @param status
//		 * @return
//		 */
//		@RequestMapping("logout.do")
//		public String logout(HttpSession session) {
//
//			/* 채팅 */
//			User u = (User)session.getAttribute("loginUser");
//
//			/* 채팅 */
//			// 로그아웃한 User를 채팅 Session ArrayList에서 삭제.
//			cSession.removeLoginUser(u.getEmail());
//		}
//
//	}