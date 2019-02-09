package openwebinar.marvel.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;



/*
*
* /------------------------------------------------\
* | Generate new project: https://start.spring.io/ |
* |------------------------------------------------|
* |------------------------------------------------|
* |   - Dependencies:                              |
* |       - Web                                    |
* |       - JDBC                                   |
* |       - DevTools                               |
* \------------------------------------------------/
*
*
* END POINT: http://localhost:8080/avengers
*
*/

@SpringBootApplication
public class MyApiRestApplication extends SpringBootServletInitializer implements WebApplicationInitializer, WebMvcConfigurer {

	public static void main(String[] args) {
		SpringApplication.run(MyApiRestApplication.class, args);
	}

}
