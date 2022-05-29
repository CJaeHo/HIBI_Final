package hibi.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Alias("report")
@Data
public class ReportDto {
	private int reportIdx;
	private String reportType;
	private String reportContent;
	private String reportProduct;
	private int userIdx;
	private int productIdx;

	@JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone="Asia/seoul")
	private Timestamp createAt;
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone="Asia/seoul") 
	private Timestamp updateAt;
	
	private int status;
}
