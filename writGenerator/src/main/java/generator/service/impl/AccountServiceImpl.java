package main.java.generator.service.impl;

import java.util.ArrayList;
import java.util.Date;
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
		
		//只有role=0即系统管理员此项属性才是null，否则提示信息不足
		if((user.getRole()!= 0 && user.getCourt() == null) || 
				(currentUser.getCourt() == null && currentUser.getRole()!=0)){
			result.setCode(103);
			result.setMessage(Result.CODE_103);
			return result;
		}
		
		//currentUser为系统管理员或 法院管理员且正在管理本法院人员时
		if(currentUser.getRole() == 0 ||
				(currentUser.getRole() == 1 && currentUser.getCourt().equals(user.getCourt()))){
			user.setCreatat(new Date());
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

		//只有role=0即系统管理员此项属性才是null，否则提示信息不足
		if((user.getRole()!= 0 && user.getCourt() == null) || 
				(currentUser.getCourt() == null && currentUser.getRole()!=0)){
			result.setCode(103);
			result.setMessage(Result.CODE_103);
			return result;
		}
		
		//currentUser为系统管理员或 法院管理员且正在管理本法院人员时
		if(currentUser.getRole() == 0
				|| (currentUser.getRole() == 1 && currentUser.getCourt().equals(user.getCourt()))){
			//删除时并不直接删除此项记录，而是将valid位置为false，因为文书编辑表中以用户id作为外键，我们想保留文书编辑表信息则不能直接删除用户记录
			UserExample ex = new UserExample();
			User userToDelete = userMapper.selectByPrimaryKey(user.getId());
			userToDelete.setValid(false);
			userToDelete.setDeleteat(new Date());
			userMapper.updateByPrimaryKey(userToDelete);
			
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
		//只显示未被删除的用户
		
		switch(currentUser.getRole()){
		case 0:
			ex.createCriteria().andValidEqualTo(true);
			userList = userMapper.selectByExample(new UserExample());
			break;
		case 1:
			ex.createCriteria().andValidEqualTo(true).andCourtEqualTo(currentUser.getCourt());
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

	@Override
	public Result findAccountById(int id, User currentUser) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Result findAccountByRole(int role, User currentUser) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Result findAccountByCourt(String court, User currentUser) {
		// TODO Auto-generated method stub
		return null;
	}
}
