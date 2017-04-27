package main.java.generator.web.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import main.java.generator.model.WritModel;
import main.java.generator.po.User;
import main.java.generator.service.PreviewService;
import main.java.generator.utils.Result;
import main.java.generator.utils.ServletUtils;

@Controller
public class PreviewController {

	@Autowired
	PreviewService previewService;
	
	/**
	 * 保存失败返回-1
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "save")
	public @ResponseBody int save(HttpServletRequest request, HttpServletResponse response) {
		
		Map<String, String> param = null;
		try {
			param = ServletUtils.getParametersFromQueryString(IOUtils.toString(request.getInputStream(), "utf-8"));
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
		
		User user = (User)request.getSession().getAttribute("user");
		Result result = previewService.save(param,user);
		if (result.getCode() != 0) {
			System.out.println(result.getMessage());
			return -1;
		}
		
		return 0;
	}
	
	@RequestMapping(value = "pre")
	public void previewtest(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession(true);
		Map<String, String> param = null;
		try {
			param = ServletUtils.getParametersFromQueryString(IOUtils.toString(request.getInputStream(), "utf-8"));
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
		
		WritModel writModel = (WritModel)session.getAttribute("writModel");
		previewService.saveToWritModel(param, writModel);
		session.setAttribute("writModel", writModel);
	}

	@RequestMapping(value = "preview")
	public @ResponseBody ModelAndView preview(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("preview", "writModel", request.getSession().getAttribute("writModel"));
		return mv;
	}
	
	@RequestMapping(value = "showWrit")
	public @ResponseBody ModelAndView showWrit(HttpServletRequest request, HttpServletResponse response,
			@Param("id") int id) {
		ModelAndView mv = new ModelAndView("preview", "writModel", null);
		return mv;
	}
}
