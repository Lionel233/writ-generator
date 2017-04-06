package main.java.generator.service.impl;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

import org.springframework.stereotype.Service;

import main.java.generator.model.Pair;
import main.java.generator.service.EvService;
import main.java.generator.utils.Constants;

@Service("evService")
public class EvServiceImpl implements EvService{
	
	public final static String EVTYPE_TESTIMONY = "证人证言";
	public final static String EVTYPE_DOCUMENTARY = "书证";
	public final static String EVTYPE_MATERIAL = "物证";
	public final static String EVTYPE_AUDIO_VISUAL = "视听资料";
	public final static String EVTYPE_STATEMENT = "当事人陈述";
	public final static String EVTYPE_CONCLUSION = "鉴定结论";
	public final static String EVTYPE_NOTES = "笔录";
	public final static String EVTYPE_OTHER = "其它";
	
	public static ArrayList<Pair> keywords = new ArrayList<Pair>();
	
	static{
		try {
			BufferedReader reader = new BufferedReader(new FileReader(new File(Constants.RESOURCE_PATH + "evidence.txt")));
			String line = "";
			while((line = reader.readLine())!=null){
				if(line.trim().isEmpty()) continue;
				String[] pairs = line.split("；");
				System.out.println(line);
				keywords.add(new Pair(pairs[0],pairs[1]));
			}
			
			reader.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 输入一小段证据，返回此证据的种类
	 * 例如 随案移交物品 ：物证
	 * @param ev
	 * @return
	 */
	public String judge(String ev){
		for(Pair pair:keywords){
			if(ev.contains(pair.keyword)){
				return pair.type;
			}
		}
		return EVTYPE_OTHER;
	}

	@Override
	public String getEvType(String name){
		return this.judge(name);
	}
}
