package hibi.service;

import hibi.dto.ProductDto;

public interface ProductServiceInter {
	//게시물 작성시 테이블에 등록
	public void insertProduct (ProductDto dto);
}
