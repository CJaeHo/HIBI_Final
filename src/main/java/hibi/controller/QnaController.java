package hibi.controller;

//import hibi.mapper.QnAMapperInter;
import hibi.mapper.QnAMapperInter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/qna")
public class QnaController {

    @Autowired
    private QnAMapperInter qnAMapperInter;

    @GetMapping("/re")
    public String re() { return "/ql/qna/qnafnq";}

    @GetMapping("/form")
    private String form() { return "/ql/qna/form";}

    @GetMapping("/list")
    public String list() {
        return "/ql/qna/qnalist";
    }

    @GetMapping("/q1")
    public String q1() {
        return "/ql/qna/q1";
    }

    @GetMapping("/q2")
    public String q2() {
        return "/ql/qna/q2";
    }

    @GetMapping("/q3")
    public String q3() {
        return "/ql/qna/q3";
    }

    @GetMapping("/q4")
    public String q4() {
        return "/ql/qna/q4";
    }

    @GetMapping("/q5")
    public String q5() {
        return "/ql/qna/q5";
    }

    @GetMapping("/q6")
    public String q6() {
        return "/ql/qna/q6";
    }
}
