package main.java.generator.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import main.java.generator.po.Argue;
import main.java.generator.po.EvSubmitter;
import main.java.generator.po.Evidence;
import main.java.generator.po.ExamEv;
import main.java.generator.po.ExamSubmitter;
import main.java.generator.po.Fact;
import main.java.generator.po.WsAjjbxxb;

public class WritModel implements Serializable {

	/**
	 * 案件基本信息
	 */
	private WsAjjbxxb ajjbxxb;
	// private String accusers;
	// private String defendants;
	/**
	 * 当事人列表
	 */
	private ArrayList<Litigant> litigantList = new ArrayList<Litigant>();

	private List<Argue> argueList = new ArrayList<Argue>();
	private List<EvSubmitter> evSubmitterList = new ArrayList<EvSubmitter>();
	private List<ExamSubmitter> examSubmitterList = new ArrayList<ExamSubmitter>();
	private List<ExamEv> examEvList = new ArrayList<ExamEv>();

	/**
	 * 查明事实
	 */
	private List<Fact> facts = new ArrayList<Fact>();

	/**
	 * 原告证据列表
	 */
	private List<Evidence> vlist = new ArrayList<Evidence>();

	/**
	 * 判决结果
	 */
	private String resultOfJudgement;

	public WritModel() {
		super();
	}

	public WsAjjbxxb getAjjbxxb() {
		return ajjbxxb;
	}

	public void setAjjbxxb(WsAjjbxxb ajjbxxb) {
		this.ajjbxxb = ajjbxxb;
	}

	public ArrayList<Litigant> getLitigantList() {
		return litigantList;
	}

	public void setLitigantList(ArrayList<Litigant> litigantList) {
		this.litigantList = litigantList;
	}

	public List<Argue> getArgueList() {
		return argueList;
	}

	public void setArgueList(List<Argue> argueList) {
		this.argueList = argueList;
	}

	public List<Fact> getFacts() {
		return facts;
	}

	public void setFacts(List<Fact> facts) {
		this.facts = facts;
	}

	public List<Evidence> getVlist() {
		return vlist;
	}

	public void setVlist(List<Evidence> vlist) {
		this.vlist = vlist;
	}

	public String getResultOfJudgement() {
		return resultOfJudgement;
	}

	public void setResultOfJudgement(String resultOfJudgement) {
		this.resultOfJudgement = resultOfJudgement;
	}

	public List<EvSubmitter> getEvSubmitterList() {
		return evSubmitterList;
	}

	public void setEvSubmitterList(List<EvSubmitter> evSubmitterList) {
		this.evSubmitterList = evSubmitterList;
	}

	public List<ExamSubmitter> getExamSubmitterList() {
		return examSubmitterList;
	}

	public void setExamSubmitterList(List<ExamSubmitter> examSubmitterList) {
		this.examSubmitterList = examSubmitterList;
	}

	public List<ExamEv> getExamEvList() {
		return examEvList;
	}

	public void setExamEvList(List<ExamEv> examEvList) {
		this.examEvList = examEvList;
	}

}
