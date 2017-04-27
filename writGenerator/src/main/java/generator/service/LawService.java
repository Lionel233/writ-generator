package main.java.generator.service;

import main.java.generator.utils.Result;

public interface LawService {
	
	public void generateLaw();
	
	public void writeLawItem(String line);
	
	public Result getAllLaws();
	
	public Result getItemNumberByLaw(String lawId);
	
	public Result getLawContentByIdAndItem(String id,int itemNumber);

}
