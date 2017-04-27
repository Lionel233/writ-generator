package main.java.generator.service.impl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import main.java.generator.dao.UserPoMapper;
import main.java.generator.model.User;
import main.java.generator.po.UserPo;
import main.java.generator.po.UserPoExample;
import main.java.generator.service.LoginService;
import main.java.generator.utils.Result;

@Service("loginService")
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	UserPoMapper userPoMapper;

	@Override
	public Result login(User user) {
		
		Result result = new Result();
		
		if(user.getUsername() == null || user.getUsername().isEmpty() || user.getPassword() == null || user.getPassword()
				.isEmpty()){
			result.setCode(103);
			result.setMessage(Result.CODE_103);
			result.setResult(null);
		}
		UserPoExample ex = new UserPoExample();
		ex.createCriteria().andUsernameEqualTo(user.getUsername())
			.andPasswordEqualTo(user.getPassword());
		List<UserPo> list = userPoMapper.selectByExample(ex);
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
			UserPo po = list.get(0);
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
