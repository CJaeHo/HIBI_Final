package hibi.dto;



import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
@Alias("user")
public class MemberDto {

	private Long userIdx;
	private String loginId;
	private String nickName;
	private String userPhoneNumber;
	private String userEmail;
	private String loginPassword;
	private String userAddress;
	
	private int authCode;
    
	
		@JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone="Asia/seoul") 
	  private Timestamp createAt;  
	
	  @JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone="Asia/seoul") 
	  private Timestamp updateAt;
	   
	  private int status;
	

}
