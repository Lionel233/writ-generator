package main.java.generator.web.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import main.java.generator.model.Data;
import main.java.generator.model.WritModel;
import main.java.generator.po.Law;
import main.java.generator.service.LawService;
import main.java.generator.service.MainService;
import main.java.generator.utils.Result;

@Controller
public class MainController {
	@Autowired
	MainService mainService;
	@Autowired
	LawService lawService;

	@RequestMapping(value = "showWrit")
	public @ResponseBody ModelAndView showWrit(HttpServletRequest request, HttpServletResponse response,
			@Param("id") int id) {
		ModelAndView mv = new ModelAndView("preview", "writModel", null);
		return mv;
	}

	@RequestMapping(value = "getWritList")
	public @ResponseBody ArrayList<Data> getWritList(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<Data> list = new ArrayList<Data>();
		Data aData = new Data(0, "yeyeye", "2017-04-26");
		for (int i = 0; i < 12; i++) {
			list.add(aData);
		}
		return list;
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

	@RequestMapping(value = "codeRecord")
	public @ResponseBody ModelAndView getCodeRecord(HttpServletRequest request, HttpServletResponse response) {
		String code = request.getParameter("code");

		Result result = mainService.getCaseRecord(code);
		if (result.getCode() != 0) {
			System.out.println(result.getMessage());
		}
		HttpSession session = request.getSession(true);
		session.setAttribute("writModel", (WritModel) result.getResult());
		@SuppressWarnings("unchecked")
		List<Law> laws = (List<Law>)lawService.getAllLaws().getResult();
		session.setAttribute("laws",laws);
		
		ModelAndView mv = new ModelAndView("main");
		mv.getModelMap().addAttribute("writModel", (WritModel) result.getResult());
		mv.getModelMap().addAttribute("laws",laws);
		return mv;
	}
	
	@RequestMapping(value="mywrits")
	public @ResponseBody ModelAndView getWrits(HttpServletRequest request, HttpServletResponse response,@Param("username")String username,@Param("password")String password) throws ServletException, IOException{
		ModelAndView mv = new ModelAndView("mywrit");
		return mv;
	}

}
