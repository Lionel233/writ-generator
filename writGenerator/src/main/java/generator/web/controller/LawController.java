package main.java.generator.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import main.java.generator.service.LawService;
import main.java.generator.utils.Result;

@Controller
public class LawController {

	@Autowired
	LawService lawService;

	@RequestMapping(value = "lawNumber")
	public @ResponseBody long getItemNumberByLaw(HttpServletRequest request, HttpServletResponse response,@Param("id")String id) {

		Result result = lawService.getItemNumberByLaw(id);
		return (long) result.getResult();
	}

}
