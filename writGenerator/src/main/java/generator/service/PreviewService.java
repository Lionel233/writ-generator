package main.java.generator.service;

import java.util.Map;

import main.java.generator.model.WritModel;
import main.java.generator.po.User;
import main.java.generator.utils.Result;

public interface PreviewService {
	
	/**
	 * 将param参数直接存入数据库
	 * @param param
	 * @param currentUser
	 * @return
	 */
	public Result save(Map<String, String> param,User currentUser);
	
	/**
	 * 将writModel内容存入数据库
	 * @param writModel
	 * @param currentUser
	 * @return
	 */
	public Result save(WritModel writModel,User currentUser);
	
	/**
	 * 将param内参数存入writModel
	 * @param param
	 * @param writModel
	 * @return
	 */
	public Result saveToWritModel(Map<String, String> param,WritModel writModel);

	/**
	 * 从数据库加载到writModel
	 * @param writModel
	 * @return
	 */
	public Result readToWritModel(WritModel writModel);
	
}
