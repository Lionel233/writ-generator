package main.java.generator.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.java.generator.dao.UserMapper;
import main.java.generator.po.User;
import main.java.generator.po.UserExample;
import main.java.generator.service.LoginService;
import main.java.generator.utils.Result;

@Service("loginService")
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	UserMapper userPoMapper;

	@Override
	public Result login(User user) {
		
		Result result = new Result();
		
		if(user.getUsername() == null || user.getUsername().isEmpty() || user.getPassword() == null || user.getPassword()
				.isEmpty()){
			result.setCode(103);
			result.setMessage(Result.CODE_103);
			result.setResult(null);
		}
		UserExample ex = new UserExample();
		ex.createCriteria().andUsernameEqualTo(user.getUsername())
			.andPasswordEqualTo(user.getPassword());
		List<User> list = userPoMapper.selectByExample(ex);
		if(list.isEmpty()){
			result.setCode(0);
			result.setMessage(Result.CODE_0);
			result.setResult(null);
		}
		else if(list.size() > 1){
			result.setCode(102);
			result.setMessage(Result.CODE_102);
			result.setResult(null);
			return result;
		}
		else{
			User po = list.get(0);
			User rUser = new User();
			rUser.setRole(po.getRole());
			rUser.setUsername(po.getUsername());
			result.setCode(0);
			result.setMessage(Result.CODE_0);
			result.setResult(rUser);
		}
		
		return result;
	}
	

	
	

}
