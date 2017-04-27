package main.java.generator.web.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import main.java.generator.model.Data;

public class AccountController {
	
	@RequestMapping(value="accountManage")
	public @ResponseBody ModelAndView getAccountManage(HttpServletRequest request, HttpServletResponse response,@Param("username")String username,@Param("password")String password) throws ServletException, IOException{
		ModelAndView mv = new ModelAndView("account");
		return mv;
	}
	
	@RequestMapping(value = "deleteAndShowUser")
	public @ResponseBody ArrayList<Data> deleteAndShowUser(HttpServletRequest request, HttpServletResponse response,@Param("id")int id) {
		ArrayList<Data> list = new ArrayList<Data>();
		Data aData = new Data(0, "add", "2017-04-26");
		for (int i = 0; i < 5; i++) {
			list.add(aData);
		}
		return list;
	}
	
	@RequestMapping(value = "addAndShowUser")
	public @ResponseBody ArrayList<Data> addAndShowUser(HttpServletRequest request, HttpServletResponse response,@Param("name")String name,@Param("phone")String phone,@Param("court")String court) {
		ArrayList<Data> list = new ArrayList<Data>();
		Data aData = new Data(0, "yeyeye", "2017-04-26");
		for (int i = 0; i < 5; i++) {
			list.add(aData);
		}
		return list;
	}
}
