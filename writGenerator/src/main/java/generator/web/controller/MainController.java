package main.java.generator.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	@RequestMapping(value = "login/test")
	public @ResponseBody int test(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("a") String a) {
		System.out.println("success");
		System.out.println(a);
		return 0;
	}

	@RequestMapping(value = "preview")
	public @ResponseBody ModelAndView test(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("preview");
		return mv;
	}

	@RequestMapping(value = "searchCode")
	public @ResponseBody boolean isExisted(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("code") String code) {
		return true;
	}

	@RequestMapping(value = "codeRecord")
	public @ResponseBody ModelAndView getCodeRecord(HttpServletRequest request, HttpServletResponse response) {
		String code = request.getParameter("code");
		ModelAndView mv = new ModelAndView("main");
		mv.getModel().put("name", "superball");
		return mv;
	}

}
