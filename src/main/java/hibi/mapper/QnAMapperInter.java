package hibi.mapper;

import hibi.dto.QnADto;
import org.apache.ibatis.annotations.Mapper;


import java.util.List;


@Mapper
public interface QnAMapperInter {
    public void insertQnA(QnADto dto);
    public void updateQnA(QnADto dto);
    public void deleteQnA(int num);

    public List<QnADto> getQnAList();

    public QnADto getQnA(int num);
    public int getToTalCount();
}
