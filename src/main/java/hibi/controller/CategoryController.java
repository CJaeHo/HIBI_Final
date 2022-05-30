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

	public ModelAndView repeatA(ModelAndView mview, int currentPage, String rtadress, Long categoryIdx){
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
		totalPage=totalCount/perPage+(totalCount%perPage==0?0:1);
		startPage=(currentPage-1)/perBlock*perBlock+1;
		endPage=startPage+perBlock-1;
		
		if(endPage>totalPage) {
			endPage=totalPage;
		}
		startNum=(currentPage-1)*perPage;
		no=totalCount-(currentPage-1)*perPage;

		Long startNum1 = startNum + 0L;
		Long perPage1 = perPage + 0L;

		//데이타 가져오기
		List<ProductDto> list=service.getList(startNum1, perPage1, categoryIdx);
		
		//각 데이타에 id를 이용해서 이름 넣어주기
		for(ProductDto dto:list) {
			String id=dto.getLoginId();
			String name=memberMapper.getSearchName(id);
			dto.setName(name);

			//댓글 갯수 acount에 넣기
            int account=answerMapper.getAnswerList(dto.getProductIdx()).size();
            dto.setAccount(account);
            
            //대표사진
            String firstPhoto = service.getFirstPhoto(dto.getProductIdx());
            dto.setFirstPhoto(firstPhoto);
		}
		
		mview.addObject("currentPage",currentPage);
		mview.addObject("totalCount",totalCount);
		mview.addObject("totalPage",totalPage);
		mview.addObject("startPage",startPage);
		mview.addObject("endPage",endPage);
		mview.addObject("no",no);
		mview.addObject("list",list);

		rtadress = "/sub/category"+rtadress;
		mview.setViewName(rtadress);
		return mview;
	}

	@GetMapping("/elecdevices")
	public ModelAndView elec(
			@RequestParam(defaultValue = "1") int currentPage,
			@RequestParam(defaultValue = "1") Long categoryIdx
			)
	{
		ModelAndView mview=new ModelAndView();
		mview = repeatA(mview, currentPage, "/elecdevices", categoryIdx);
		return mview;
	}
	
	@GetMapping("/living")
	public ModelAndView living(
		@RequestParam(defaultValue = "1") int currentPage,
		@RequestParam(defaultValue = "2") Long categoryIdx)
	{
		ModelAndView mview=new ModelAndView();
		mview = repeatA(mview, currentPage, "/living", categoryIdx);
		return mview;
	}
	
	@GetMapping("/hobby")
	public ModelAndView hobby(
		@RequestParam(defaultValue = "1") int currentPage,
		@RequestParam(defaultValue = "3") Long categoryIdx)
	{
		ModelAndView mview=new ModelAndView();
		mview = repeatA(mview, currentPage, "/hobby", categoryIdx);
		return mview;
	}
	
	@GetMapping("/fashion")
	public ModelAndView fashion(
		@RequestParam(defaultValue = "1") int currentPage,
		@RequestParam(defaultValue = "4") Long categoryIdx)
	{
		ModelAndView mview=new ModelAndView();
		mview = repeatA(mview, currentPage, "/fashion", categoryIdx);
		return mview;
	}
	
	@GetMapping("/pet")
	public ModelAndView pet(
		@RequestParam(defaultValue = "1") int currentPage,
		@RequestParam(defaultValue = "5") Long categoryIdx)
	{
		ModelAndView mview=new ModelAndView();
		mview = repeatA(mview, currentPage, "/pet", categoryIdx);
		return mview;
	}
	
	@GetMapping("/beauty")
	public ModelAndView beauty(
		@RequestParam(defaultValue = "1") int currentPage,
		@RequestParam(defaultValue = "6") Long categoryIdx)
	{
		ModelAndView mview=new ModelAndView();
		mview = repeatA(mview, currentPage, "/beauty", categoryIdx);
		return mview;
	}
	
	@GetMapping("/food")
	public ModelAndView food(
		@RequestParam(defaultValue = "1") int currentPage,
		@RequestParam(defaultValue = "7") Long categoryIdx)
	{
		ModelAndView mview=new ModelAndView();
		mview = repeatA(mview, currentPage, "/food", categoryIdx);
		return mview;
	}
	
	@GetMapping("/talent")
	public ModelAndView talent(
		@RequestParam(defaultValue = "1") int currentPage,
		@RequestParam(defaultValue = "8") Long categoryIdx)
	{
		ModelAndView mview=new ModelAndView();
		mview = repeatA(mview, currentPage, "/talent", categoryIdx);
		return mview;
	}
}
