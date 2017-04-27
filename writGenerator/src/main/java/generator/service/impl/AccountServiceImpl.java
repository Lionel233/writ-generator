package main.java.generator.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.java.generator.dao.CourtMapper;
import main.java.generator.dao.UserMapper;
import main.java.generator.po.Court;
import main.java.generator.po.CourtExample;
import main.java.generator.po.User;
import main.java.generator.po.UserExample;
import main.java.generator.service.AccountService;
import main.java.generator.utils.Result;

@Service("accountService")
public class AccountServiceImpl implements AccountService{
	
	@Autowired
	CourtMapper courtMapper; 
	@Autowired
	UserMapper userMapper;

	@Override
	public Result addAccount(User user,User currentUser) {
		Result result = new Result();
		
		if(user.getCourt() == null || currentUser.getCourt() == null){
			result.setCode(103);
			result.setMessage(Result.CODE_103);
		}
		
		if(currentUser.getRole() == 0 ||
				(currentUser.getRole() == 1 && currentUser.getCourt().equals(user.getCourt()))){
			userMapper.insert(user);
			
			result.setCode(0);
			result.setMessage(Result.CODE_0);
		}else{
			result.setCode(303);
			result.setMessage(Result.CODE_303);
		}
		return result;
	}
	
	@Override
	public Result deleteAccount(User user, User currentUser) {
		Result result = new Result();

		if(user.getCourt() == null || currentUser.getCourt() == null){
			result.setCode(103);
			result.setMessage(Result.CODE_103);
		}
		
		if(currentUser.getRole() == 0
				|| (currentUser.getRole() == 1 && currentUser.getCourt().equals(user.getCourt()))){
			UserExample ex = new UserExample();
			ex.createCriteria().andIdEqualTo(user.getId());
			userMapper.deleteByExample(ex);
			
			result.setCode(0);
			result.setMessage(Result.CODE_0);
		}else{
			result.setCode(303);
			result.setMessage(Result.CODE_303);
		}

		return result;
	}

	@Override
	public Result updateAccount(User user, User currentUser) {
		Result result = new Result();
		
		if(user.getCourt() == null || currentUser.getCourt() == null){
			result.setCode(103);
			result.setMessage(Result.CODE_103);
		}
		
		if(currentUser.getRole() == 0){
			userMapper.updateByPrimaryKey(user);
			
			result.setCode(0);
			result.setMessage(Result.CODE_0);
		}else{
			result.setCode(303);
			result.setMessage(Result.CODE_303);
		}
		return null;
	}

	@Override
	public List<User> showAccount(User currentUser) {
		List<User> userList = new ArrayList<User>();
		
		UserExample ex = new UserExample();
		
		switch(currentUser.getRole()){
		case 0:
			userList = userMapper.selectByExample(new UserExample());
			break;
		case 1:
			ex.createCriteria().andCourtEqualTo(currentUser.getCourt());
			userList = userMapper.selectByExample(new UserExample());
			break;
		case 2:
			userList.add(currentUser);
		}
		
		return userList;
	}

	@Override
	public Result getAllCourt() {
		Result result = new Result();
		result.setCode(0);
		result.setMessage(Result.CODE_0);
		
		List<Court> courtList = courtMapper.selectByExample(new CourtExample());
		result.setResult(courtList);
		
		return result;
	}
}
