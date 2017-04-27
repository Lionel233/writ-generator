package main.java.generator.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import main.java.generator.po.Argue;
import main.java.generator.po.Evidence;
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
	/**
	 * 查明事实
	 */
	private List<String> facts;

	/**
	 * 原告证据列表
	 */
	private ArrayList<Evidence> vlist = new ArrayList<Evidence>();

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

	public List<String> getFacts() {
		return facts;
	}

	public void setFacts(List<String> facts) {
		this.facts = facts;
	}

	public ArrayList<Evidence> getVlist() {
		return vlist;
	}

	public void setVlist(ArrayList<Evidence> vlist) {
		this.vlist = vlist;
	}

	public String getResultOfJudgement() {
		return resultOfJudgement;
	}

	public void setResultOfJudgement(String resultOfJudgement) {
		this.resultOfJudgement = resultOfJudgement;
	}

}
