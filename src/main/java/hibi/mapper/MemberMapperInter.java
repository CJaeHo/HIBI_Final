package hibi.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import hibi.dto.BoardDto;
import hibi.dto.MemberDto;

@Mapper
public interface MemberMapperInter {
	public void insertMember(MemberDto dto);
	public int getSearchId(String id); 
	public List<MemberDto> getAllMembers();
	public String getSearchName(String id); 
	public int login(Map<String, String>map);
	
	public String userfind(Map<String, String>map);
//	public void deleteMember(String num);
//	public void updateChu(Map<String, Integer>map);
//	public int getTotalCount();	
	
//session에서 얻은 아이디로 userIdx 얻고, 얻은 userIdx로 product테이블에 정보 삽입
	public Long getUserIdx (String loginid); //이거 하고나서 14행 insertProduct 호출
	}
	

 