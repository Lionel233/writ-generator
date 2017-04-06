package main.java.generator.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import main.java.generator.service.EvService;

@Controller
public class EvController {
	
	@Autowired
	EvService evService;

	@RequestMapping(value="evTypeJudge")
	public @ResponseBody String getEvType(@RequestParam("name") String name){
		return evService.getEvType(name);
	}
}
