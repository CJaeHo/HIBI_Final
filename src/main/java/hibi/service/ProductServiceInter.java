package hibi.service;

import java.util.ArrayList;

import hibi.dto.ImageProductDto;
import hibi.dto.ProductDto;

public interface ProductServiceInter {
	//게시물 작성시 테이블에 등록
	public void insertProduct (ProductDto dto);
	
	//session에서 얻은 아이디로 userIdx 얻고, 얻은 userIdx로 product테이블에 정보 삽입
	 //이거 하고나서 14행 insertProduct 호출
	
	//loginId로 User 테이블에서 userIdx를 얻고
	//userIdx로 Product 테이블에서 productIdx들 얻어서 arraylist에 넣고
	//컨트롤러의 imgdto에 넣기
	public ArrayList<String> getProductIdxs (String loginId);
	
	//session에서 얻은 아이디로 imageProduct테이블에 정보 삽입
	public void insertImageProduct(ImageProductDto dto);
}
