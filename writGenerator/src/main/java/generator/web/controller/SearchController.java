package main.java.generator.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import main.java.generator.model.WritModel;
import main.java.generator.po.WsAjjbxxb;
import main.java.generator.service.SearchService;
import main.java.generator.utils.Result;

@Controller
public class SearchController {
	@Autowired
	SearchService searchService;
	
	@RequestMapping(value = "search")
	public @ResponseBody ModelAndView search(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("search");
		return mv;
	}

	@RequestMapping(value = "searchCode")
	public @ResponseBody boolean isExisted(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("code") String code) {
		System.out.println(code);

		Result result = searchService.isCaseExist(code);
		if (result.getCode() != 0) {
			System.out.println(result.getMessage());
			return false;
		}
		return (boolean) result.getResult();
	}
	
	@RequestMapping(value = "codeRecord")
	public @ResponseBody ModelAndView getCodeRecord(HttpServletRequest request, HttpServletResponse response) {
		String code = request.getParameter("code");

		Result result = searchService.getCaseRecord(code);
		if (result.getCode() != 0) {
			System.out.println(result.getMessage());
		}
		HttpSession session = request.getSession(true);
		session.setAttribute("writModel", (WritModel) result.getResult());
		return new ModelAndView("main", "writModel", (WritModel) result.getResult());
	}
	
	@RequestMapping(value = "searchAutoComplete")
	public @ResponseBody String searchAutoComplete(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("keyword") String keyword) {
		System.out.println(keyword);

//		Result result = searchService.isCaseExist(code);
//		if (result.getCode() != 0) {
//			System.out.println(result.getMessage());
//			return false;
//		}
		List<WsAjjbxxb> list = new ArrayList<WsAjjbxxb>();
		for(int i = 0; i< 10;i ++){
			WsAjjbxxb w = new WsAjjbxxb();
			w.setAh("fdsfsf");
			w.setAjxh(9990);
			list.add(w);
		}
		Gson gson = new Gson();
		return gson.toJson(list).toString();
	}


}
