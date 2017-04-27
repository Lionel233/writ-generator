package main.java.generator.service;

import java.util.Map;

import main.java.generator.model.WritModel;
import main.java.generator.po.User;
import main.java.generator.utils.Result;

public interface PreviewService {
	
	public Result save(Map<String, String> param,User currentUser);
	
	public Result saveToWritModel(Map<String, String> param,WritModel writModel);

}
