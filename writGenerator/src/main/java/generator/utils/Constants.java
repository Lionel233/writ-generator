package main.java.generator.utils;

import main.java.generator.service.impl.EvServiceImpl;

public class Constants {
	
	public static final String RESOURCE_PATH = EvServiceImpl.class.getResource("/").getFile().toString() + "main/resources/";

}
