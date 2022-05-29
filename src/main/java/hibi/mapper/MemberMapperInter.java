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
	
	
	
	}
	

 