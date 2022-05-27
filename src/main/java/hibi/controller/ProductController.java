package hibi.controller;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import hibi.dto.ImageProductDto;
import hibi.dto.MemberDto;
import hibi.dto.ProductDto;
import hibi.mapper.MemberMapperInter;
import hibi.mapper.ProductMapperInter;
import hibi.service.ProductService;
import util.FileUtil;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private ProductMapperInter productMapper;
	
	@Autowired
	private MemberMapperInter memberMapper;
	
	@Autowired
	private ProductService service;

	//게시물 페이지
	@GetMapping("/detail")
	public ModelAndView detail(
			@RequestParam int productIdx,
			@RequestParam String currentPage) {
		ModelAndView mview = new ModelAndView();
		
		
		
		return mview;
	}
	
//form & insert
	//게시물 작성
	@GetMapping("/form")
	public String form(@RequestParam Map<String, String> map) {
		ModelAndView mview = new ModelAndView();
		String loginId = map.get("loginId");
		
		return "/pl/product/productForm";
	}
	
	//게시물 data -> db에 등록
	@PostMapping("/insert")
	public String insertProduct(
			@ModelAttribute MemberDto mdto,
			@ModelAttribute ProductDto pdto,
			@ModelAttribute ImageProductDto imgdto,
			@RequestParam ArrayList<MultipartFile> upload,
			HttpSession session,
			HttpServletRequest request,
			RedirectAttributes redirectAttributes){
		String referer = request.getHeader("Referer");
		
		String path = request.getServletContext().getRealPath("/save");
		String loginId = (String)session.getAttribute("loginid");
		//mdto.setLoginId(loginId);
		
		//로그인아이디로 userIdx구하고 pdto랑ipdto에 게시물 정보 저장
		Long userIdx = memberMapper.getUserIdx(loginId);
		pdto.setUserIdx(userIdx);
		System.out.println("userIdx: "+pdto.getUserIdx()+" / loginId:"+loginId);
		
		
/////////////////// Product table Member table
		
		if(upload.get(0).getOriginalFilename().equals("")) {
			imgdto.setImageName("no");
		} else {
			FileUtil fileUtil = new FileUtil();
			String imageName ="";
			for (MultipartFile f:upload) {
				String rename = fileUtil.changeFileName(f.getOriginalFilename());
				imageName += rename + ",";
				File file = new File(path + "//" + rename);
				try {
					f.transferTo(file);
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			imageName = imageName.substring(0,imageName.length()-1);
			/* System.out.println(productPhoto); */
			//로그인아이디로 
			imgdto.setImageName(imageName);
/////////////////////////////////////////////////////////////수정
			System.out.println(imgdto.getImageName());
			
		}
		service.getProductIdxs(loginId);
		
//		List<String> productIdx = ArrayList<String>;
		
		//productIdx를 imgdto productIdx로
		//게시물 번호
		System.out.println("userIdx="+userIdx);
//		Long productIdx = productMapper.getProductIdx(userIdx);
		
		//게시물 테이블, 이미지 테이블의 productIdx, userIdx 세팅
//		imgdto.setProductIdx(productIdx);
		pdto.setUserIdx(userIdx);
		
		productMapper.insertProduct(pdto);
		productMapper.insertImageProduct(imgdto);
		
		System.out.println("pdto:"+pdto+" / imgdto:"+imgdto);
		
		return "redirect:../";//메인으로
	}
	
}
