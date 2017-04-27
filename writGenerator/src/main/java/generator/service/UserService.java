package main.java.generator.service;

import main.java.generator.po.User;
import main.java.generator.utils.Result;

public interface UserService {
	
	/**
	 * @param user
	 * @return the corresponding user
	 * 	null if username does not exist or wrong password
	 */
	public Result login(User user);
	
	public Result getAllWrits(User currentUser);

}
