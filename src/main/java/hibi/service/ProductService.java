package hibi.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hibi.dto.ImageProductDto;
import hibi.dto.ProductDto;
import hibi.mapper.MemberMapperInter;
import hibi.mapper.ProductMapperInter;

@Service
public class ProductService implements ProductServiceInter {

	@Autowired
	private ProductMapperInter productMapper;
	
	private MemberMapperInter memberMapper;
	
	@Override
	public void insertProduct(ProductDto dto) {
		// TODO Auto-generated method stub
		
		productMapper.insertProduct(dto);
	}



	@Override
	public void insertImageProduct(ImageProductDto dto) {
		// TODO Auto-generated method stub
		productMapper.insertImageProduct(dto);
	}


	//loginId로 User 테이블에서 userIdx를 얻고
	//userIdx로 Product 테이블에서 productIdx들 얻어서 arraylist에 넣고
	//컨트롤러의 imgdto에 넣기
	@Override
	public ArrayList<String> getProductIdxs(String loginId) {
		// TODO Auto-generated method stub
		
		Long userIdx = memberMapper.getUserIdx(loginId);
		
		
		ArrayList<String> productIdxs = new ArrayList<String>();
//		productIdxs = add()
		
		return null;
	}

}
