package main.java.generator.service.impl;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.java.generator.dao.LawContentMapper;
import main.java.generator.dao.LawMapper;
import main.java.generator.po.Law;
import main.java.generator.po.LawContent;
import main.java.generator.utils.Constants;

@Service("lawGenerateService")
public class LawGenerateService {
	
	@Autowired
	LawMapper lawMapper;
	@Autowired
	LawContentMapper lawContentMapper;
	
	public void generateLaw(){
		
		String filePath = Constants.RESOURCE_PATH + "law.json";
		BufferedReader reader = null;
		try {
			reader = new BufferedReader(new FileReader(new File(filePath)));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
		String line = null;
		try {
			while((line = reader.readLine())!=null){
				System.out.println(line);
				writeLawItem(line);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public void writeLawItem(String line){
		JSONObject o = new JSONObject(line);
		String id = o.getJSONObject("_id").getString("$oid");
		String name = null;
		try{
			name = o.getString("名称");
		}catch(Exception e){
			return;
		}
		
		
		Law law = new Law();
		law.setId(id);
		law.setName(name);
		lawMapper.insert(law);
		
		JSONArray versions = o.getJSONArray("编");
		if(versions.length() == 0){
			return;
		}
		for(int i = 0;i < versions.length();i ++){
			JSONArray chapters = versions.getJSONObject(i).getJSONArray("章");
			
			for(int j = 0;j < chapters.length();j ++){
				JSONObject chapter = chapters.getJSONObject(j);
				int chapterNumber = chapter.getInt("章号");
				
				if(!chapter.has("节")){
					continue;
				}
				JSONArray sections = chapter.getJSONArray("节");
				for(int k=0;k < sections.length();k ++){
					JSONObject section = sections.getJSONObject(k);
					int sectionNumber = section.getInt("节号");
					
					
					if(!section.has("条")){
						continue;
					}
					JSONArray items = section.getJSONArray("条");
					for(int z = 0;z < items.length();z ++){
						JSONObject item = items.getJSONObject(z);
						String itemContent = item.getString("内容");
						int itemNumber = item.getInt("条号");
						
						LawContent content = new LawContent();
						content.setChapter(chapterNumber);
						content.setVersion(i);
						content.setSection(sectionNumber);
						content.setItem(itemNumber);
						System.out.println(itemContent);
						content.setContent(itemContent);
						content.setLawid(id);
						try{
							lawContentMapper.insert(content);
						}catch(Exception e){
							
						}
						
					}
				}
			}
		}
	}
	
}
