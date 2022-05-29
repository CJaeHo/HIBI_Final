package hibi.service;

import java.util.ArrayList;
import java.util.List;


/*import hibi.dto.ImageProductDto;*/
import hibi.dto.ProductDto;

public interface ProductServiceInter {
	//게시물 작성시 테이블에 등록
	public void insertProduct (ProductDto dto);

	public void updateReStep(int reg, int restep);      // 변수 값 받아서 묶어서 보낼려고
	public int getTotalCount();                        
	public List<ProductDto> getList(Long start, Long perpage, Long categoryIdx);
	
	public String getFirstImage(Long productIdx);
	
	//좋아요수
	
}
