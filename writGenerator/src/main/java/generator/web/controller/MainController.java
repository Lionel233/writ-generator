package main.java.generator.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import main.java.generator.model.WritModel;
import main.java.generator.service.MainService;
import main.java.generator.utils.Result;

@Controller
public class MainController {
	@Autowired
	MainService mainService;

	WritModel curWritModel = new WritModel();
	@RequestMapping(value = "login/test")
	public @ResponseBody int test(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("success");
		return 0;
	}
	
	@RequestMapping(value = "pre")
	public @ResponseBody WritModel previewtest(HttpServletRequest request, HttpServletResponse response,@Param("writModel")WritModel writModel) {
		curWritModel.setAjjbxxb(writModel.getAjjbxxb());
		return curWritModel;
	}

	@RequestMapping(value = "preview")
	public @ResponseBody ModelAndView preview(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("preview", "writModel",curWritModel);
		return mv;
	}

	@RequestMapping(value = "searchCode")
	public @ResponseBody boolean isExisted(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("code") String code) {
		System.out.println(code);
		
		Result result = mainService.isCaseExist(code);
		if(result.getCode() != 0){
			System.out.println(result.getMessage());
			return false;
		}
		return (boolean)result.getResult();
	}

	@RequestMapping(value = "codeRecord")
	public @ResponseBody ModelAndView getCodeRecord(HttpServletRequest request, HttpServletResponse response) {
		String code = request.getParameter("code");
		
		Result result = mainService.getCaseRecord(code);
		if(result.getCode() != 0){
			System.out.println(result.getMessage());
		}
		return new ModelAndView("main", "writModel",(WritModel) result.getResult());
	}

}
