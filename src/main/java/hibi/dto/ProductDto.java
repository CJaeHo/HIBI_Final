package hibi.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Alias("product")
@Data
public class ProductDto {
	private Long productIdx;
	private String productTitle;
	private String productContent;
	private int saleStaus;
	private int productStatus;
	private int hidden;
	private int productLookupCount; //조회수
	private int productLikeCount; //좋아요
	private Long categoryIdx; //카테고리인덱스
	private Long userIdx; //유저 인덱스
	private String productPhoto; //올린 사진


	@JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone="Asia/seoul")
	private Timestamp createAt;
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone="Asia/seoul") 
	private Timestamp updateAt;
	
	private int status;
}
