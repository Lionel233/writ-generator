package main.java.generator.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import main.java.generator.model.User;

@Controller
public class LoginController {
	
	@RequestMapping(value = "login")
	public @ResponseBody ModelAndView login(HttpServletRequest request, HttpServletResponse response,@Param("username")String username,@Param("password")String password) throws ServletException, IOException{
		if(username.equals("ball")){
			User user = new User();
			request.getSession().setAttribute("user", user);
			ModelAndView mv = new ModelAndView("search");
			return mv;
		}else{
			ModelAndView mv = new ModelAndView("login","error","yes");
			return mv;
		}
	}

}
