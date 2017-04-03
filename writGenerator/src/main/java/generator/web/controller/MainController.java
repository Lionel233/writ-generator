package main.java.generator.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping(value={"test"})
	public void test(){
		System.out.println("success");
	}
	
}
