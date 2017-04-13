package main.java.generator.model;

import java.io.Serializable;
import java.util.ArrayList;

import main.java.generator.po.EvidencePo;

public class WritModel implements Serializable {

	/**
	 * 案件分类
	 */
	private String classification;
	// private String accusers;
	// private String defendants;
	/**
	 * 当事人列表
	 */
	private ArrayList<Litigant> litigantList = new ArrayList<Litigant>();
	/**
	 * 原告诉称
	 */
	private String accuserClaims;
	/**
	 * 被告辩称
	 */
	private String defendantArgues;
	/**
	 * 查明事实
	 */
	private String facts;

	/**
	 * 原告证据列表
	 */
	private ArrayList<EvidencePo> vlist = new ArrayList<EvidencePo>();

	/**
	 * 判决结果
	 */
	private String resultOfJudgement;

	public WritModel() {
		super();
	}

	public String getClassification() {
		return classification;
	}

	public void setClassification(String classification) {
		this.classification = classification;
	}

	public ArrayList<Litigant> getLitigantList() {
		return litigantList;
	}

	public void setLitigantList(ArrayList<Litigant> litigantList) {
		this.litigantList = litigantList;
	}

	public String getAccuserClaims() {
		return accuserClaims;
	}

	public void setAccuserClaims(String accuserClaims) {
		this.accuserClaims = accuserClaims;
	}

	public String getDefendantArgues() {
		return defendantArgues;
	}

	public void setDefendantArgues(String defendantArgues) {
		this.defendantArgues = defendantArgues;
	}

	public String getFacts() {
		return facts;
	}

	public void setFacts(String facts) {
		this.facts = facts;
	}

	public ArrayList<EvidencePo> getVlist() {
		return vlist;
	}

	public void setVlist(ArrayList<EvidencePo> vlist) {
		this.vlist = vlist;
	}

	public String getResultOfJudgement() {
		return resultOfJudgement;
	}

	public void setResultOfJudgement(String resultOfJudgement) {
		this.resultOfJudgement = resultOfJudgement;
	}

}
