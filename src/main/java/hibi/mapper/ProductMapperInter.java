package hibi.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import hibi.dto.ProductDto;

@Mapper
public interface ProductMapperInter {
	//삽입, 수정, 삭제
	public void insertProduct(ProductDto dto); //등록버튼 누르면 실행
	public void updateProduct(int productIdx);
	public void deleteProduct(int productIdx);
	
	//데이터 가져오기 (게시글 인덱스로)
	public ProductDto getData(int productIdx);
	
	//리스트로 전체 데이터 가져오기- 카테고리
	public List<ProductDto> getList(Map<String, Integer> map);
	
	//게시물에 보여줄 데이터들
	
}
