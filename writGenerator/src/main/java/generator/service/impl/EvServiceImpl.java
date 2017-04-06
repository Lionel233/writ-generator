package main.java.generator.service.impl;

import org.springframework.stereotype.Service;

import main.java.generator.service.EvService;

@Service("evService")
public class EvServiceImpl implements EvService{

	@Override
	public String getEvType(String name){
		return " ";
	}
}
