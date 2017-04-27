package main.java.generator.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import main.java.generator.dao.ArgueMapper;
import main.java.generator.dao.EditMapper;
import main.java.generator.dao.EvSubmitterMapper;
import main.java.generator.dao.EvidenceMapper;
import main.java.generator.dao.ExamEvMapper;
import main.java.generator.dao.ExamSubmitterMapper;
import main.java.generator.dao.FactMapper;
import main.java.generator.model.WritModel;
import main.java.generator.po.Argue;
import main.java.generator.po.Edit;
import main.java.generator.po.EvSubmitter;
import main.java.generator.po.Evidence;
import main.java.generator.po.ExamEv;
import main.java.generator.po.ExamSubmitter;
import main.java.generator.po.Fact;
import main.java.generator.po.User;
import main.java.generator.service.PreviewService;
import main.java.generator.utils.Result;

@Service("preViewService")
public class PreviewServiceImpl implements PreviewService{
	
	@Autowired
	ArgueMapper argueMapper;
	@Autowired
	EvidenceMapper evidenceMapper;
	@Autowired
	EvSubmitterMapper evSubmitterMapper;
	@Autowired
	ExamEvMapper examEvMapper;
	@Autowired
	ExamSubmitterMapper examSubmitterMapper;
	@Autowired
	FactMapper factMapper;
	@Autowired
	EditMapper editMapper;

	@Override
	public Result save(Map<String, String> param,User currentUser) {
		
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
			EvSubmitter evSubmitter = new EvSubmitter();
			evSubmitter.setAjxh(ajxh);
			evSubmitter.setSubmitter(token.selectorValue);
			evSubmitterMapper.insert(evSubmitter);
			
			evMap.put(token.id, evSubmitter.getId());
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
			ExamSubmitter examSubmitter = new ExamSubmitter();
			examSubmitter.setAjxh(ajxh);
			examSubmitter.setConfirmedall(token.confirmAll);
			examSubmitter.setSubmitter1(token.name1);
			examSubmitter.setSubmitter2(token.name2);
			boolean hasChild = false;
			for(ExamEvJ ev:examEvList){
				if(ev.exam_id == token.id){
					hasChild = true;
					break;
				}
			}
			examSubmitter.setHaschild(hasChild);
			examSubmitterMapper.insert(examSubmitter);
			
			examMap.put(token.id, examSubmitter.getId());
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
		
		Edit edit = new Edit();
		edit.setAjxh(ajxh);
		edit.setUserid(currentUser.getId());
		edit.setLastedittime(new Date());
		editMapper.insert(edit);
		
		result.setCode(0);
		result.setMessage(Result.CODE_0);
		return result;
	}

	@Override
	public Result saveToWritModel(Map<String, String> param, WritModel writModel) {
		Result result = new Result();
		Gson gson = new Gson();
		
		List<ArgueJ> argueList = gson.fromJson(param.get("argues"),  new TypeToken<List<ArgueJ>>() {}.getType());
		List<FactJ> factList = gson.fromJson(param.get("facts"),  new TypeToken<List<FactJ>>() {}.getType());
		List<Ev> evList = gson.fromJson(param.get("evs"),  new TypeToken<List<Ev>>() {}.getType());
		List<EvSeries> evSeriesList = gson.fromJson(param.get("evSeries"),  new TypeToken<List<EvSeries>>() {}.getType());
		List<ExamEvJ> examEvList = gson.fromJson(param.get("examEvs"),  new TypeToken<List<ExamEvJ>>() {}.getType());
		List<ExamJ> examList = gson.fromJson(param.get("exams"),  new TypeToken<List<ExamJ>>() {}.getType());
		int ajxh = Integer.parseInt(param.get("ajxh"));
		
		writModel.getArgueList().clear();
		writModel.getFacts().clear();
		writModel.getEvSubmitterList().clear();
		writModel.getVlist().clear();
		writModel.getExamEvList().clear();
		writModel.getExamSubmitterList().clear();
		
		for(ArgueJ token:argueList){
			Argue argue = new Argue();
			argue.setAjxh(ajxh);
			argue.setArgument(token.argument);
			argue.setLitigant(token.argueSelector);
			writModel.getArgueList().add(argue);
		}
		
		for(FactJ token:factList){
			Fact fact = new Fact();
			fact.setAjxh(ajxh);
			fact.setContent(token.fact);
			writModel.getFacts().add(fact);
		}
		
		HashMap<Integer,Integer> evMap = new HashMap<Integer,Integer>();
		for(EvSeries token:evSeriesList){
			EvSubmitter evSubmitter = new EvSubmitter();
			evSubmitter.setAjxh(ajxh);
			evSubmitter.setSubmitter(token.selectorValue);
			writModel.getEvSubmitterList().add(evSubmitter);
			
			evMap.put(token.id, evSubmitter.getId());
		}
		
		for(Ev token:evList){
			Evidence evidence = new Evidence();
			evidence.setAjxh(ajxh);
			evidence.setDetail(token.detail);
			evidence.setName(token.name);
			evidence.setType(token.type);
			evidence.setSubmitterid(evMap.get(token.movieSeries_id));
			writModel.getVlist().add(evidence);
		}
		
		HashMap<Integer,Integer> examMap = new HashMap<Integer,Integer>();
		for(ExamJ token:examList){
			ExamSubmitter examSubmitter = new ExamSubmitter();
			examSubmitter.setAjxh(ajxh);
			examSubmitter.setConfirmedall(token.confirmAll);
			examSubmitter.setSubmitter1(token.name1);
			examSubmitter.setSubmitter2(token.name2);
			boolean hasChild = false;
			for(ExamEvJ ev:examEvList){
				if(ev.exam_id == token.id){
					hasChild = true;
					break;
				}
			}
			examSubmitter.setHaschild(hasChild);
			writModel.getExamSubmitterList().add(examSubmitter);
			
			examMap.put(token.id, examSubmitter.getId());
		}
		
		for(ExamEvJ token:examEvList){
			ExamEv examEv = new ExamEv();
			examEv.setAjxh(ajxh);
			examEv.setComment(token.comment);
			examEv.setConfirmed(token.confirmed);
			examEv.setEvidence(token.name);
			examEv.setSubmitterid(examMap.get(token.exam_id));
			writModel.getExamEvList().add(examEv);
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

