package main.java.generator.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import main.java.generator.model.WritEdit;
import main.java.generator.po.User;
import main.java.generator.service.LawService;
import main.java.generator.service.UserService;
import main.java.generator.utils.Result;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	@Autowired
	LawService lawService;
	
	@RequestMapping(value = "login")
	public @ResponseBody ModelAndView login(HttpServletRequest request, HttpServletResponse response,@Param("username")String username,@Param("password")String password) throws ServletException, IOException{
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		
		//lawService.generateLaw();
		
		Result result = userService.login(user);
		if(result.getCode() != 0){
			System.out.println(result.getMessage());
			return null;
		}
		
		if(result.getResult() != null){
			user = (User)result.getResult();
			request.getSession().setAttribute("user", user);
			ModelAndView mv = new ModelAndView("search");
			return mv;
		}else{
			ModelAndView mv = new ModelAndView("login","error","yes");
			return mv;
		}
	}
	
	@RequestMapping(value = "getWritList")
	public @ResponseBody List<WritEdit> getWritList(HttpServletRequest request, HttpServletResponse response) {
		
		Result result = userService.login((User)request.getSession().getAttribute("user"));
		if(result.getCode() != 0){
			System.out.println(result.getMessage());
			return null;
		}
		return (List<WritEdit>)result.getResult();
	}
	
	@RequestMapping(value="mywrits")
	public @ResponseBody ModelAndView getWrits(HttpServletRequest request, HttpServletResponse response,@Param("username")String username,@Param("password")String password) throws ServletException, IOException{
		ModelAndView mv = new ModelAndView("mywrit");
		return mv;
	}

}
