package hibi.mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import hibi.dto.ProductDto;

@Mapper
public interface ProductMapperInter {
	//삽입, 수정, 삭제
	public void insertProduct(ProductDto dto); //등록버튼 누르면 실행
	public void updateProduct(ProductDto dto);
	public void deleteProduct(Long productIdx);
	
	//게시물 데이터 가져오기 (게시글 인덱스로)
	public ProductDto getData(Long productIdx);
	
	//리스트로 전체 데이터 가져오기- 카테고리
	public List<ProductDto> getList(Map<String, Long> map);
	
	//게시물에 보여줄 데이터들
	
	public void updateReStep(Map<String, Integer> map);
	//좋아요
	public void updateLikeCount(Map<String, Integer> map);
	
	public void updateLookupCount(Long productIdx);
	
	public String getFirstImage(Long productIdx);

	public String getCategoryName(Long categoryIdx);
}
