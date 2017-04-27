package main.java.generator.service;

import main.java.generator.utils.Result;

public interface SearchService {
	
	/**
	 * 案件是否存在 
	 * @param code 案件编号
	 * @return
	 */
	public Result isCaseExist(String code);
	
	public Result getCaseRecord(String code);

}
