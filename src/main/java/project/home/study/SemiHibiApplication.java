package project.home.study;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"project.home.study", "*.controller", "tiles","hibi.*"})
@MapperScan("hibi.*")
public class SemiHibiApplication {

	public static void main(String[] args) {
		SpringApplication.run(SemiHibiApplication.class, args);
	}

}
