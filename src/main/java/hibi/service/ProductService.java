package hibi.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/*import hibi.dto.ImageProductDto;*/
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
		int reg = dto.getReg();
		int restep = dto.getRestep();
		int relevel = dto.getRelevel();
		//Long productIdx = dto.getProductIdx();
		
		
		System.out.println("dto :  " + dto);
		
		
		productMapper.insertProduct(dto);
	}

	@Override
	public void updateReStep(int reg, int restep) {
		// TODO Auto-generated method stub
		 System.out.println(reg+","+restep);
	      // TODO Auto-generated method stub
	      Map<String, Integer> map=new HashMap<>();
	      map.put("reg", reg);         // map에 put을 이용해서 값 넣기.. 
	      // 여기서 "reg","restep"은 BoardServiceInter.java 파일에서 적었던 변수 그대로 적어야 에러안남
	      map.put("restep", restep);     // map에 put을 이용해서 값 넣기
	      productMapper.updateReStep(map);      // mapper로 보내기
	}

	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ProductDto> getList(Long start, Long perpage, Long categoryIdx) {
		// TODO Auto-generated method stub
		Map<String, Long> map = new HashMap<>();
		map.put("start", start);
		map.put("perpage", perpage);
		map.put("categoryIdx", categoryIdx);
		return productMapper.getList(map);
	}

	@Override
	public String getFirstImage(Long productIdx) {
		// TODO Auto-generated method stub
		String photos[] = productMapper.getFirstImage(productIdx).split(",");
		String firstphoto = photos[0];
		return firstphoto;
	}
	
	
}










