package main.java.generator.service;

import java.util.List;

import main.java.generator.po.User;
import main.java.generator.utils.Result;

public interface AccountService {
	
	public Result addAccount(User user,User currentUser);
	
	public Result deleteAccount(User user,User currentUser);
	
	public Result updateAccount(User user,User currentUser);
	
	public List<User> showAccount(User currentUser);
	
	public Result getAllCourt();

}
