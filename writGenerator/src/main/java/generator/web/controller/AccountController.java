package main.java.generator.web.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import main.java.generator.po.User;
import main.java.generator.service.AccountService;
import main.java.generator.utils.Result;
import main.java.generator.utils.ServletUtils;

@Controller
public class AccountController {
	@Autowired
	AccountService accountService;
	
	@RequestMapping(value="accountManage")
	public @ResponseBody ModelAndView getAccountManage(HttpServletRequest request, HttpServletResponse response,@Param("username")String username,@Param("password")String password) throws ServletException, IOException{
		ModelAndView mv = new ModelAndView("account");
		return mv;
	}
	
	@RequestMapping(value = "deleteAndShowUser")
	public @ResponseBody List<User> deleteAndShowUser(HttpServletRequest request, HttpServletResponse response,@Param("id")int id) {
		
		Map<String, String> param = null;
		try {
			param = ServletUtils.getParametersFromQueryString(IOUtils.toString(request.getInputStream(), "utf-8"));
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
		
		User currentUser = (User)(request.getSession().getAttribute("user"));
		User user = new User();
		user.setId(id);
		user.setCourt("0");
		user.setRole(0);
		Result result = accountService.deleteAccount(user,currentUser);
		
		if(result.getCode() != 0){
			System.out.println(result.getMessage());
		}
		
		return accountService.showAccount(currentUser);
	}
	
	@RequestMapping(value = "addAndShowUser")
	public @ResponseBody List<User> addAndShowUser(HttpServletRequest request, HttpServletResponse response,@Param("name")String name,@Param("phone")String phone,@Param("court")String court) {
		
		Map<String, String> param = null;
		try {
			param = ServletUtils.getParametersFromQueryString(IOUtils.toString(request.getInputStream(), "utf-8"));
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
		
		User currentUser = (User)(request.getSession().getAttribute("user"));
		User user = new User();
		user.setCourt(court);
		user.setPassword("00");
		user.setPhone(phone);
		user.setRole(0);
		user.setUsername(name);
		user.setValid(true);
		Result result = accountService.addAccount(user,currentUser);
		
		if(result.getCode() != 0){
			System.out.println(result.getMessage());
		}
		
		return accountService.showAccount(currentUser);
		
	}
	
	@RequestMapping(value = "updateAndShowUser")
	public @ResponseBody List<User> updateAndShowUser(HttpServletRequest request, HttpServletResponse response,@Param("id")int id,@Param("name")String name,@Param("phone")String phone,@Param("court")String court) {
		
		Map<String, String> param = null;
		try {
			param = ServletUtils.getParametersFromQueryString(IOUtils.toString(request.getInputStream(), "utf-8"));
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
		
		User currentUser = (User)(request.getSession().getAttribute("user"));
		User user = new User();
		user.setId(id);
		user.setCourt(court);
		user.setPassword("00");
		user.setPhone(phone);
		user.setRole(0);
		user.setUsername(name);
		user.setValid(true);
		
		Result result = accountService.updateAccount(user,currentUser);
		
		if(result.getCode() != 0){
			System.out.println(result.getMessage());
		}
		
		return accountService.showAccount(currentUser);
	}
}
