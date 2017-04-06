package main.java.generator.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	@RequestMapping(value="login/test")
	public @ResponseBody int test(){
		System.out.println("success");
		return 0;
	}
	
	@RequestMapping(value="preview")
	public @ResponseBody ModelAndView test(HttpServletRequest request,HttpServletResponse response){
		ModelAndView mv = new ModelAndView("preview");
		return mv;
	}
}
