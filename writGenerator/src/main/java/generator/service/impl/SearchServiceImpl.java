package main.java.generator.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.java.generator.dao.WsAjjbxxbMapper;
import main.java.generator.dao.WsDsrQkPoMapper;
import main.java.generator.dao.WsDsrQzcsPoMapper;
import main.java.generator.dao.WsDsrbPoMapper;
import main.java.generator.po.WsDsrbPoExample;
import main.java.generator.service.SearchService;
import main.java.generator.utils.Result;

@Service("searchService")
public class SearchServiceImpl implements SearchService{
	
	@Autowired
	WsDsrbPoMapper wsDsrbPoMapper;

	@Override
	public Result isCaseExist(String code) {
		Result result = new Result();
		
		if(code == null || code.isEmpty()){
			result.setCode(201);
			result.setMessage(Result.CODE_201);
			return result;
		}else{
			int _code = 0;
			try{
				_code = Integer.parseInt(code);
			}catch(Exception e){
				result.setCode(202);
				result.setMessage(Result.CODE_202);
				return result;
			}
			WsDsrbPoExample ex = new WsDsrbPoExample();
			ex.createCriteria().andAjxhEqualTo(_code);
			long number = wsDsrbPoMapper.countByExample(ex);
			
			result.setCode(0);
			result.setMessage(Result.CODE_0);
			result.setResult(number >= 1);
		}
		
		return result;
	}

}
