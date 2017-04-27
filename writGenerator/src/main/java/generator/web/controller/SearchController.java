package main.java.generator.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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


}
