package hibi.mapper;

import java.sql.Timestamp;

import org.apache.ibatis.annotations.Mapper;

import com.fasterxml.jackson.annotation.JsonFormat;

import hibi.dto.BadgeDto;
import hibi.dto.CommentDto;
import hibi.dto.LikeProductDto;
import hibi.dto.MemberDto;
import hibi.dto.ProductDto;

@Mapper
public interface MyPageMapperInter {
	
	// user 로그인 정보수정..?
	public MemberDto getMemberData(MemberDto dto);
	
	// 찜 게시물
	public LikeProductDto getLikeProductData(LikeProductDto dto);
	
	// 댓글
	public CommentDto getCommentDtoData(CommentDto dto);
	
	// 작성한 게시물
	public ProductDto getProductDtoData(ProductDto dto);
	
	// 뱃지
	// public BadgeDto insertbadge(BadgeDto dto); 
	public void insertbadge(BadgeDto dto);
	// 이거 두개는 무슨차이...?
	//<select id="insertBadge" parameterType="badge">
	//select into badge () values (#{}, #{}, #{}, #{})
	//</select>
	
	
	
	
	  
	 
	
	
	// myProduct 테이블이 있어야하는건가..?
	
}
