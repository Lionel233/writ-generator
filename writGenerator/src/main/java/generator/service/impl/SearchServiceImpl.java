package main.java.generator.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.java.generator.dao.WsAjjbxxbMapper;
import main.java.generator.dao.WsDsrQkPoMapper;
import main.java.generator.dao.WsDsrQzcsPoMapper;
import main.java.generator.dao.WsDsrbPoMapper;
import main.java.generator.model.Litigant;
import main.java.generator.model.WritModel;
import main.java.generator.po.WsAjjbxxbExample;
import main.java.generator.po.WsDsrQkPo;
import main.java.generator.po.WsDsrQkPoExample;
import main.java.generator.po.WsDsrQzcsPo;
import main.java.generator.po.WsDsrQzcsPoExample;
import main.java.generator.po.WsDsrbPo;
import main.java.generator.po.WsDsrbPoExample;
import main.java.generator.service.SearchService;
import main.java.generator.utils.Result;

@Service("searchService")
public class SearchServiceImpl implements SearchService{
	
	@Autowired
	WsDsrbPoMapper wsDsrbPoMapper;
	@Autowired
	WsDsrQkPoMapper wsDsrQkPoMapper;
	@Autowired
	WsDsrQzcsPoMapper wsDsrQzcsMapper;
	@Autowired
	WsAjjbxxbMapper wsAjjbxxbMapper;
	
	

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
		ArrayList<Litigant> litigantList = new ArrayList<Litigant>();
		
		//获取案件编号code
		int _code = 0;
		try{
			_code = Integer.parseInt(code);
		}catch(Exception e){
			result.setCode(202);
			result.setMessage(Result.CODE_202);
			return result;
		}
		
		//得到并写入案件基本信息
		WsAjjbxxbExample ajjbxxbEx = new WsAjjbxxbExample();
		ajjbxxbEx.createCriteria().andAjxhEqualTo(_code);
		model.setAjjbxxb(wsAjjbxxbMapper.selectByExample(ajjbxxbEx).get(0));
		
		//得到当事人基本信息   列表
		WsDsrbPoExample dsrbEx = new WsDsrbPoExample();
		dsrbEx.createCriteria().andAjxhEqualTo(_code);
		List<WsDsrbPo> dsrbList = wsDsrbPoMapper.selectByExample(dsrbEx);
		
		//写入当事人信息
		for(WsDsrbPo token:dsrbList){
			Litigant litigant = new Litigant();
			
			WsDsrQkPoExample dsrQkEx = new WsDsrQkPoExample();
			dsrQkEx.createCriteria().andAjxhEqualTo(_code).andDsrbhEqualTo(token.getDsrbh());
			List<WsDsrQkPo> qkList = wsDsrQkPoMapper.selectByExample(dsrQkEx);
			
			WsDsrQzcsPoExample dsrQzcsEx = new WsDsrQzcsPoExample();
			dsrQzcsEx.createCriteria().andAjxhEqualTo(_code).andDsrbhEqualTo(token.getDsrbh());
			List<WsDsrQzcsPo> qzcsList = wsDsrQzcsMapper.selectByExample(dsrQzcsEx);
			
			litigant.setWsDsrb(token);
			litigant.setWsDsrQk(qkList);
			litigant.setWsDsrQzcs(qzcsList);
			litigantList.add(litigant);
		}
		model.setLitigantList(litigantList);
		
		result.setCode(0);
		result.setMessage(Result.CODE_0);
		result.setResult(model);
		return result;
	}

}
