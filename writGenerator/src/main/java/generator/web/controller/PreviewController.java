package main.java.generator.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import main.java.generator.model.WritModel;
import main.java.generator.service.PreviewService;

@Controller
public class PreviewController {

	@Autowired
	PreviewService previewService;
	
	@RequestMapping(value = "save")
	public @ResponseBody int save(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("successfully saved");
		return 0;
	}
	
	/**
	 * 返回预览页面并向页面中加入writModel
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "getWrit")
	public @ResponseBody int getWrit(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("getWrit called");
		return 0;
	}
	
	@RequestMapping(value = "pre")
	public @ResponseBody WritModel previewtest(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession(true);
		return (WritModel) session.getAttribute("writModel");
	}

	@RequestMapping(value = "preview")
	public @ResponseBody ModelAndView preview(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("preview", "writModel", request.getSession().getAttribute("writModel"));
		return mv;
	}
}
