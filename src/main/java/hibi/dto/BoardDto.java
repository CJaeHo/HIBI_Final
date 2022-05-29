package hibi.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("board")
@Data
public class BoardDto {
	private int num;
	private String id;
	private String name;
	private String subject;
	private String content;
	private String photos;
	private Timestamp writeday;
	private int readcount;
	private int chu;
	private int totalchu;
	private int reg;
	private int restep;
	private int relevel;
	private int acount;

	
	
//	num   시퀀스
//	id  아이디
//	subject  제목
//	content 내용
//	photos  이미지들(컴마로 저장)-no
//	writeday  글쓴날짜
//	readcount 조횟수(기본값 0)
//	chu  추천수(기본값 0)
//	totalchu 총추천수(디폴트 0)
//	reg  그룹번호
//	restep 그룹내 순서
//	relevel 그룹내 들여쓰기 순서
// acount 댓글갯수

}

