package hibi.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hibi.dto.BoardDto;
import hibi.mapper.BoardMapperInter;

@Service         // 자동으로 Bean 처리 해줌
public class BoardService implements BoardServiceInter {

   @Autowired
   private BoardMapperInter mapper;    // BoardMapperInter 이놈을 맵핑하겠대 @autowired로 자동으로 가져오고
   
   @Override
   public int getMaxNum() {
      // TODO Auto-generated method stub
      return mapper.getMaxNum();
   }

   @Override
   public void updateReStep(int reg, int restep) {      // 변수 두개 묶는대
	   System.out.println(reg+","+restep);
      // TODO Auto-generated method stub
      Map<String, Integer> map=new HashMap<>();
      map.put("reg", reg);         // map에 put을 이용해서 값 넣기.. 
      // 여기서 "reg","restep"은 BoardServiceInter.java 파일에서 적었던 변수 그대로 적어야 에러안남
      map.put("restep", restep);      // map에 put을 이용해서 값 넣기
      mapper.updateReStep(map);      // mapper로 보내기

   }

   @Override
   public int getTotalCount() {
      // TODO Auto-generated method stub
      return mapper.getTotalCount();
   }

   @Override
   public List<BoardDto> getList(int start, int perpage) {      // map으로 변수 두개 묶어서 보낼꺼야
      // TODO Auto-generated method stub
      Map<String, Integer> map=new HashMap<>();
      map.put("start", start);         // map에 put을 이용해서 값 넣기.. 
      // 여기서 "start","perpage"는 BoardServiceInter.java 파일에서 적었던 변수 그대로 적어야 에러안남
      map.put("perpage", perpage);
      return mapper.getList(map);
   }

   @Override
   public void insertBoard(BoardDto dto) {
      // TODO Auto-generated method stub
	   int reg=dto.getReg();
	   int restep=dto.getRestep();
	   int relevel=dto.getRelevel();
	   int num=dto.getNum();
	   
	   //새글인경우
	   if(num==0)
	   {
		   //새글인경우
		   reg=this.getMaxNum()+1;
		   restep=0;
		   relevel=0;
	   }else {
		   //답글인 경우
		   //기존 restep 보다 큰값은 모두 1증가하기
		   this.updateReStep(reg, restep);
		   //기존 값들보다 1증가
		   restep++;
		   relevel++;

		   
	   }
	   dto.setReg(reg);
	   dto.setRestep(restep);
	   dto.setRelevel(relevel);
	   //insert
	   mapper.insertBoard(dto);
   }

   @Override
   public void updateReadCount(int num) {
      // TODO Auto-generated method stub
      mapper.updateReadCount(num);
   }

   @Override
   public BoardDto getData(int num) {
      // TODO Auto-generated method stub
      return mapper.getData(num);
   }
   @Override
   public void updateChu(int chu,int num) {
	   
	   Map<String,Integer>map=new HashMap<>();
	   map.put("chu", chu);
	   map.put("num", num);
	   mapper.updateChu(map);
   }

   @Override
   public void updateBoard(BoardDto dto) {
	mapper.updateBoard(dto);

}
   
   @Override
   public void deleteBoard(int num) {
	// TODO Auto-generated method stub
	   mapper.deleteBoard(num);
   }
}