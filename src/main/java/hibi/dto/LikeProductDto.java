package hibi.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Alias("likeProduct")
@Data
public class LikeProductDto {
	private int likeIdx;
	private int productIdx;
	private int userIdx;

	@JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone="Asia/seoul")
	private Timestamp createAt;
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone="Asia/seoul") 
	private Timestamp updateAt;
	
	private int status;
}
