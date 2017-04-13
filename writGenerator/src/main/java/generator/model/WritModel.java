package main.java.generator.model;

import java.io.Serializable;
import java.util.ArrayList;

import main.java.generator.po.EvidencePo;

public class WritModel implements Serializable{
	
	private String classification;
	private String accusers;
	private String defendants;
	private String accuserClaims;
	private String defendantArgues;
	private String facts;
	
	private ArrayList<EvidencePo> accuserEvlist = new ArrayList<EvidencePo>();
	private ArrayList<EvidencePo> defendantEvlist = new ArrayList<EvidencePo>();
	
	private String resultOfJudgement;
	
}
