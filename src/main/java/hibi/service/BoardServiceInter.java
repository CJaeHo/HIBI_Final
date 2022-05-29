package hibi.service;

import java.util.List;
import java.util.Map;

import hibi.dto.BoardDto;

public interface BoardServiceInter {
   public int getMaxNum();
   public void updateReStep(int reg, int restep);      // 변수 값 받아서 묶어서 보낼려고
   public int getTotalCount();                        
   public List<BoardDto> getList(int start, int perpage);   // 얘도 받아서 묶어서 보낸대
   public void insertBoard(BoardDto dto);      
   public void updateReadCount(int num);      
   public BoardDto getData(int num);         
   public void updateChu(int chu,int num);
	public void updateBoard(BoardDto dto);
	public void deleteBoard(int num);
}