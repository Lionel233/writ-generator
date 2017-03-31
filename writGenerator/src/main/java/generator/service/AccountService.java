package main.java.generator.service;

import java.util.List;

import main.java.generator.model.User;

public interface AccountService {
	
	public boolean addAccount(User user,User currentUser);
	
	public boolean deleteAccount(User user,User currentUser);
	
	public boolean updateAccount(User user,User currentUser);
	
	public List<User> showAccount(User currentUser);

}
