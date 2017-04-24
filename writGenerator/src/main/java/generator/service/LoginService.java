package main.java.generator.service;

import main.java.generator.model.User;
import main.java.generator.utils.Result;

public interface LoginService {
	
	/**
	 * @param user
	 * @return the corresponding user
	 * 	null if username does not exist or wrong password
	 */
	public Result login(User user);

}
