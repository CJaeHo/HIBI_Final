package hibi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hibi.dto.ProductDto;
import hibi.mapper.ProductMapperInter;

@Service
public class ProductService implements ProductServiceInter {

	@Autowired
	private ProductMapperInter mapper;
	
	@Override
	public void insertProduct(ProductDto dto) {
		// TODO Auto-generated method stub

		

		
	}

}
