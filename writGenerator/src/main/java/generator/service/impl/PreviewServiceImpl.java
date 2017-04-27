package main.java.generator.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import main.java.generator.dao.ArgueMapper;
import main.java.generator.dao.EvSubmmitterMapper;
import main.java.generator.dao.EvidenceMapper;
import main.java.generator.dao.ExamEvMapper;
import main.java.generator.dao.ExamSubmmitterMapper;
import main.java.generator.dao.FactMapper;
import main.java.generator.po.Argue;
import main.java.generator.po.EvSubmmitter;
import main.java.generator.po.Evidence;
import main.java.generator.po.ExamEv;
import main.java.generator.po.ExamSubmmitter;
import main.java.generator.po.Fact;
import main.java.generator.service.PreviewService;
import main.java.generator.utils.Result;

@Service("preViewService")
public class PreviewServiceImpl implements PreviewService{
	
	@Autowired
	ArgueMapper argueMapper;
	@Autowired
	EvidenceMapper evidenceMapper;
	@Autowired
	EvSubmmitterMapper evSubmmitterMapper;
	@Autowired
	ExamEvMapper examEvMapper;
	@Autowired
	ExamSubmmitterMapper examSubmmitterMapper;
	@Autowired
	FactMapper factMapper;

	@Override
	public Result save(Map<String, String> param) {
		
		Result result = new Result();
		Gson gson = new Gson();
		
		List<ArgueJ> argueList = gson.fromJson(param.get("argues"),  new TypeToken<List<ArgueJ>>() {}.getType());
		List<FactJ> factList = gson.fromJson(param.get("facts"),  new TypeToken<List<FactJ>>() {}.getType());
		List<Ev> evList = gson.fromJson(param.get("evs"),  new TypeToken<List<Ev>>() {}.getType());
		List<EvSeries> evSeriesList = gson.fromJson(param.get("evSeries"),  new TypeToken<List<EvSeries>>() {}.getType());
		List<ExamEvJ> examEvList = gson.fromJson(param.get("examEvs"),  new TypeToken<List<ExamEvJ>>() {}.getType());
		List<ExamJ> examList = gson.fromJson(param.get("exams"),  new TypeToken<List<ExamJ>>() {}.getType());
		int ajxh = Integer.parseInt(param.get("ajxh"));
		
		for(ArgueJ token:argueList){
			Argue argue = new Argue();
			argue.setAjxh(ajxh);
			argue.setArgument(token.argument);
			argue.setLitigant(token.argueSelector);
			argueMapper.insert(argue);
		}
		
		for(FactJ token:factList){
			Fact fact = new Fact();
			fact.setAjxh(ajxh);
			fact.setContent(token.fact);
			factMapper.insert(fact);
		}
		
		HashMap<Integer,Integer> evMap = new HashMap<Integer,Integer>();
		for(EvSeries token:evSeriesList){
			EvSubmmitter evSubmmitter = new EvSubmmitter();
			evSubmmitter.setAjxh(ajxh);
			evSubmmitter.setSubmitter(token.selectorValue);
			evSubmmitterMapper.insert(evSubmmitter);
			
			evMap.put(token.id, evSubmmitter.getId());
		}
		
		for(Ev token:evList){
			Evidence evidence = new Evidence();
			evidence.setAjxh(ajxh);
			evidence.setDetail(token.detail);
			evidence.setName(token.name);
			evidence.setType(token.type);
			evidence.setSubmitterid(evMap.get(token.movieSeries_id));
			evidenceMapper.insert(evidence);
		}
		
		HashMap<Integer,Integer> examMap = new HashMap<Integer,Integer>();
		for(ExamJ token:examList){
			ExamSubmmitter examSubmmitter = new ExamSubmmitter();
			examSubmmitter.setAjxh(ajxh);
			examSubmmitter.setConfirmedall(token.confirmAll);
			examSubmmitter.setSubmitter1(token.name1);
			examSubmmitter.setSubmitter2(token.name2);
			boolean hasChild = false;
			for(ExamEvJ ev:examEvList){
				if(ev.exam_id == token.id){
					hasChild = true;
					break;
				}
			}
			examSubmmitter.setHaschild(hasChild);
			examSubmmitterMapper.insert(examSubmmitter);
			
			examMap.put(token.id, examSubmmitter.getId());
		}
		
		for(ExamEvJ token:examEvList){
			ExamEv examEv = new ExamEv();
			examEv.setAjxh(ajxh);
			examEv.setComment(token.comment);
			examEv.setConfirmed(token.confirmed);
			examEv.setEvidence(token.name);
			examEv.setSubmitterid(examMap.get(token.exam_id));
			examEvMapper.insert(examEv);
		}
		
		result.setCode(0);
		result.setMessage(Result.CODE_0);
		return result;
	}

}

class ArgueJ{
	public int id;
	public String argueSelector;
	public String argument;
}

class FactJ{
	public int id;
	public String fact;
}

class Ev{
	public int id;
	public String name;
	public String detail;
	public String prove;
	public String type;
	public int movieSeries_id;
}

class ExamEvJ{
	public int id;
	public String name;
	public String comment;
	public int exam_id;
	public boolean confirmed;
}

class ExamJ{
	public int id;
	public String name1;
	public String name2;
	public boolean confirmAll;
}

class EvSeries{
	public int id;
	public String selectorValue;
}

