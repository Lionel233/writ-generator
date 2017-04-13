package main.java.generator.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.java.generator.dao.WsDsrbPoMapper;
import main.java.generator.model.WritModel;
import main.java.generator.po.WsDsrbPoExample;
import main.java.generator.service.MainService;
import main.java.generator.utils.Result;

@Service("mainService")
public class MainServiceImpl implements MainService{
	
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

	@Override
	public Result getCaseRecord(String code) {
		
		Result result = new Result();
		WritModel model = new WritModel();
		
		result.setCode(0);
		result.setMessage(Result.CODE_0);
		result.setResult(model);
		return result;
	}
	
	

}
