package hibi.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import hibi.dto.CommentDto;

@Mapper
public interface AnswerMapperInter {

	public void insertAnswer(CommentDto dto);
	public List<CommentDto> getAnswerList(Long productIdx);
	public void deleteAnswer(int idx);
	

	}

