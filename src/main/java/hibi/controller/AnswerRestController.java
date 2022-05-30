package hibi.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import hibi.dto.CommentDto;
import hibi.mapper.AnswerMapperInter;

@RestController
@RequestMapping("/answer")
public class AnswerRestController {

    @Autowired
    private AnswerMapperInter mapper;

    @PostMapping("/insert")
    public void insertAnswer(@ModelAttribute CommentDto dto){
        mapper.insertAnswer(dto);
    }

    @GetMapping("/list")
    public Map<String, Object> getAnswerList(@RequestParam Long productIdx){
        Map<String, Object> map = new HashMap<>();
        List<CommentDto> alist = mapper.getAnswerList(productIdx);
        map.put("count", alist.size());
        map.put("alist", alist);
        return map;
    }

    @GetMapping("/delete")
    public void deleteAnsewer(@RequestParam int commentIdx){
        mapper.deleteAnswer(commentIdx);
    }
}
