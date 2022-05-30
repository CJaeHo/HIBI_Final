package hibi.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import hibi.dto.ProductDto;
import hibi.mapper.AnswerMapperInter;
import hibi.mapper.MemberMapperInter;
import hibi.mapper.ProductMapperInter;
import hibi.service.ProductService;

@Controller
@RequestMapping("/category")
public class CategoryController {
	@Autowired
	private MemberMapperInter memberMapper;
	
	@Autowired
	private AnswerMapperInter answerMapper;
	
	@Autowired
	private ProductMapperInter productMapper;
	
	@Autowired
	private ProductService service;

	@GetMapping("/elecdevices")
	public ModelAndView elec(
			@RequestParam(defaultValue = "1") int currentPage
			)
	{
		ModelAndView mview=new ModelAndView();
		//페이징 처리
		int totalCount;//총 갯수
		int perPage=16; //한페이지당 보여질 글의 갯수
		int perBlock=16; //한블럭 보여질 페이지수 
		int totalPage; //총페이지수
		int startNum; // 한페이지에서 보여질 시작 글번호
		int startPage; // 한블럭에서 보여질 시작 페이지 번호
		int endPage; //한블럭에서 보여질 끝 페이지 번호
		int no; //각 페이지당 보여질 시작번호
		
		//총 글의 갯수를 구한다
		totalCount=service.getTotalCount();
		
		//총 페이지수를 구한다
		totalPage=totalCount/perPage+(totalCount%perPage==0?0:1);
		
		//totalPage=(int)Math.ceil((double)totalCount/perPage); //무조건 올
		//각 블럭의 시작페이지
		//1,6,11....(currentpage가 1~5일때는 1,  6~10 일때는 6)
		
		startPage=(currentPage-1)/perBlock*perBlock+1; //if 현재페이지가 5 // (5-1)/5x5+1 
		
		//5,10,15....(currentpage가 1~5일때는 5,  6~10 일때는 10)
		
		endPage=startPage+perBlock-1;
		
		//문제점(마지막 블럭은 총페이지수까지만 나와야 한다)
		
		if(endPage>totalPage) {
			
			endPage=totalPage;
		}
		
		//각 페이지에서 보여질 글의 시작번호(mysql은 0부터 오라클은 1부터임)
		//예)한페이지당 3개일경우 1페이지:0, 2페이지:3, 3페이지 :6....
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
            int account=answerMapper.getAnswerList(dto.getProductIdx()).size();
            dto.setAccount(account);
            
            //대표사진
            String firstImage = service.getFirstImage(dto.getProductIdx());
            dto.setFirstImage(firstImage);
		}
		
		
		mview.addObject("currentPage",currentPage);
		mview.addObject("totalCount",totalCount);
		mview.addObject("totalPage",totalPage);
		mview.addObject("startPage",startPage);
		mview.addObject("endPage",endPage);
		mview.addObject("no",no);
		mview.addObject("list",list);
		
		mview.setViewName("/sub/category/elecdevices");
		return mview;
	}
	
	@GetMapping("/living")
	public String living()
	{
		return "/sub/category/living";
	}
	
	@GetMapping("/hobby")
	public String hobby()
	{
		return "/sub/category/hobby";
	}
	
	@GetMapping("/fashion")
	public String fashion()
	{
		return "/sub/category/fashion";
	}
	
	@GetMapping("/pet")
	public String pet()
	{
		return "/sub/category/pet";
	}
	
	@GetMapping("/beauty")
	public String beauty()
	{
		return "/sub/category/beauty";
	}
	
	@GetMapping("/food")
	public String food()
	{
		return "/sub/category/food";
	}
	
	@GetMapping("/talent")
	public String talent()
	{
		return "/sub/category/talent";
	}
}
