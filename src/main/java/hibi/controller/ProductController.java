package hibi.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

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

import hibi.dto.MemberDto;
import hibi.dto.ProductDto;
import hibi.mapper.ProductMapperInter;
import util.FileUtil;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private ProductMapperInter mapper;

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
	public String form() {
		return "/pl/product/productForm";
	}
	
	//게시물 data -> db에 등록
	@PostMapping("/insert")
	public String insertProduct(@ModelAttribute MemberDto mdto,
			@ModelAttribute ProductDto pdto,
			@RequestParam ArrayList<MultipartFile> upload,
			HttpSession session,
			HttpServletRequest request,
			RedirectAttributes redirectAttributes){
		String referer = request.getHeader("Referer");
		
		String path = request.getServletContext().getRealPath("/save");
		String loginId = (String)session.getAttribute("loginId");
		mdto.setLoginId(loginId);
		System.out.println("userIdx: "+mdto.getUserIdx()+" / loginId:"+loginId);
		
		
/////////////////// Product table Member table
		
		if(upload.get(0).getOriginalFilename().equals("")) {
			pdto.setProductPhoto("no");
		} else {
			FileUtil fileUtil = new FileUtil();
			String productPhoto ="";
			for (MultipartFile f:upload) {
				String rename = fileUtil.changeFileName(f.getOriginalFilename());
				productPhoto += rename + ",";
				File file = new File(path + "//" + rename);
				try {
					f.transferTo(file);
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			productPhoto = productPhoto.substring(0,productPhoto.length()-1);
			/* System.out.println(productPhoto); */
			pdto.setProductPhoto(productPhoto);
			System.out.println(pdto.getProductPhoto());
			
		}
		
		mapper.insertProduct(pdto);
		
		return "redirect:../";//메인으로
	}
	
}
