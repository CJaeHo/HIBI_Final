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

/*import hibi.dto.ImageProductDto;*/
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

	@GetMapping("/list")
	public ModelAndView list(
		@RequestParam(defaultValue = "1") int currentPage
		)
	{
		ModelAndView mview=new ModelAndView();
		//페이징 처리
		int totalCount;//총 갯수
		int perPage=5; //한페이지당 보여질 글의 갯수
		int perBlock=5; //한블럭 보여질 페이지수 
		int totalPage; //총페이지수
		int startNum; // 한페이지에서 보여질 시작 글번호
		int startPage; // 한블럭에서 보여질 시작 페이지 번호
		int endPage; //한블럭에서 보여질 끝 페이지 번호
		int no; //각 페이지당 보여질 시작번호
		
		totalCount=service.getTotalCount();
		totalPage=totalCount/perPage+(totalCount%perPage==0?0:1);
		startPage=(currentPage-1)/perBlock*perBlock+1;
		endPage=startPage+perBlock-1;
		if(endPage>totalPage) {
			endPage=totalPage;
		}
		
		startNum=(currentPage-1)*perPage;
		
		//각페이지당 보여질 시작번호
		no=totalCount-(currentPage-1)*perPage;
		
		//데이타 가져오기
		List<ProductDto> list=service.getList(startNum, perPage);
		
		//각 데이타에 id를 이용해서 이름 넣어주기
		for(ProductDto dto:list)
		{
			
			String id=dto.getLoginId();
			String name=memberMapper.getSearchName(id);
			dto.setName(name);

			
			//댓글 갯수 acount에 넣기
//            int acount=answerMapper.getAnswerList(dto.getNum()).size();
//            dto.setAcount(acount);
		}
		
		mview.addObject("currentPage",currentPage);
		mview.addObject("totalCount",totalCount);
		mview.addObject("totalPage",totalPage);
		mview.addObject("startPage",startPage);
		mview.addObject("endPage",endPage);
		mview.addObject("no",no);
		mview.addObject("list",list);
		
		mview.setViewName("/board/boardlist");
		return mview;
		
	}

	// 게시물 페이지
	@GetMapping("/detail")
	public ModelAndView detail(
			@RequestParam Long productIdx,
			@RequestParam String categorynum) {
		ModelAndView mview = new ModelAndView();
		
		productMapper.updateLookupCount(productIdx);
		ProductDto dto = productMapper.getData(productIdx);
		String name = memberMapper.getSearchName(dto.getLoginId());
		dto.setName(name);
		
		mview.setViewName("/pl/product/productDetail");
		return mview;
	}

//form & insert
	// 게시물 작성
	@GetMapping("/form")
	public ModelAndView form(@RequestParam Map<String, String> map) {

		ModelAndView mview = new ModelAndView();
		//답글일 경우 읽어야할 5개의 값 (새글일 경우는 값이 안넘어오므로 모두 null이다)
		String currentPage=map.get("currentPage");
		String num=map.get("num");
		String reg=map.get("reg");
		String restep=map.get("restep");
		String relevel=map.get("relevel");
			
		mview.addObject("currentPage",currentPage==null?"1":currentPage);
		mview.addObject("num",num==null?"0":num);
		mview.addObject("reg",reg==null?"0":reg);
		mview.addObject("restep",restep==null?"0":restep);
		mview.addObject("relevel",relevel==null?"0":relevel);
		
		
		mview.setViewName("/board/boardform");
		return mview;
	}

//게시물 data -> db에 등록
	@PostMapping("/insert")
	public String insertProduct(@ModelAttribute ProductDto pdto, @RequestParam ArrayList<MultipartFile> upload,
			HttpSession session, HttpServletRequest request, RedirectAttributes redirectAttributes) {
		/* String referer = request.getHeader("Referer"); */
		//
		// @RequestParam String categoryPage,

		String path = request.getServletContext().getRealPath("/save");
		String loginId = (String) session.getAttribute("loginid");
		pdto.setLoginId(loginId);

//파일명
		if (upload.get(0).getOriginalFilename().equals("")) {
			pdto.setProductPhotos("no");
		} else {
			FileUtil fileUtil = new FileUtil();
			String productPhotos = "";
			for (MultipartFile f : upload) {
				String rename = fileUtil.changeFileName(f.getOriginalFilename());
				productPhotos += rename + ",";
				File file = new File(path + "//" + rename);
				try {
					f.transferTo(file);
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			productPhotos = productPhotos.substring(0, productPhotos.length() - 1);
			// 로그인아이디로
			pdto.setProductPhotos(productPhotos);
		}

		service.insertProduct(pdto);

		// category/categoryPage?"+categoryPage;
		return "redirect:../"; // 메인으로
	}
	
	@GetMapping("/updateform")
	public ModelAndView updateForm(
			@RequestParam Long productIdx,
			@RequestParam int currentPage,
			@RequestParam ArrayList<MultipartFile> upload,
			HttpServletRequest request
			) {
		ModelAndView mview = new ModelAndView();
		ProductDto dto = productMapper.getData(productIdx);
		mview.addObject("dto", dto);
		mview.addObject("currentPage", currentPage);
		
		mview.setViewName("/pl/product/productUpdate");
		return mview;
	}
	

	@PostMapping("/update")
	public String update(
			@ModelAttribute ProductDto dto, 
			@RequestParam int currentPage,
			@RequestParam ArrayList<MultipartFile> upload, 
			HttpServletRequest request
			) {
		// 사진을 저장할 경우
		String path = request.getServletContext().getRealPath("/save");

		// 사진을 업로드 안했을경우 photos 에 'no' 라고 저장
		if (upload.get(0).getOriginalFilename().equals("")) {
			dto.setProductPhotos("null");
		} else {
			FileUtil fileUtil = new FileUtil();
			String photos = "";
			for (MultipartFile f : upload) {
				String rename = fileUtil.changeFileName(f.getOriginalFilename());
				photos += rename + ",";
				File file = new File(path + "//" + rename);
				try {
					f.transferTo(file);// save 폴더에 업로드됨
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			// 마지막 컴마 제거
			photos = photos.substring(0, photos.length() - 1);
			System.out.println(photos);
			dto.setProductPhotos(photos);
		}

		// db update
		productMapper.updateProduct(dto);

		return "redirect: ../";
	}
	
	@GetMapping("/delete")
	public String delete(
			@RequestParam Long productIdx,
			@RequestParam int currentPage,
			HttpServletRequest request
			) {
		
		//save폴더의 위치 구하기
		String path=request.getServletContext().getRealPath("/save");
		//일단 save 폴더의 파일 삭제
		String photos=productMapper.getData(productIdx).getProductPhotos();
		if(!photos.equals("no")) {
			
			String []fileName=photos.split(",");
			for(String f:fileName) {
				File file=new File(path+"//"+f);
				if(file.exists())
					file.delete();
				
			}
		}
		//db에서 데이타 삭제
		productMapper.deleteProduct(productIdx);
		
		return "redirect:../";
	}
	

}
