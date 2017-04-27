package main.java.generator.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.java.generator.dao.EditMapper;
import main.java.generator.dao.UserMapper;
import main.java.generator.dao.WsAjjbxxbMapper;
import main.java.generator.model.WritEdit;
import main.java.generator.po.Edit;
import main.java.generator.po.EditExample;
import main.java.generator.po.User;
import main.java.generator.po.UserExample;
import main.java.generator.po.WsAjjbxxb;
import main.java.generator.service.UserService;
import main.java.generator.utils.Result;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Autowired
	UserMapper userPoMapper;
	@Autowired
	EditMapper editMapper;
	@Autowired
	UserMapper userMapper;
	@Autowired
	WsAjjbxxbMapper wsAjjbxxbMapper;

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

	@Override
	public Result getAllWrits(User currentUser) {
		
		Result result = new Result();
		List<WritEdit> editInfoList = new ArrayList<WritEdit>();
		
		EditExample ex = new EditExample();
		ex.createCriteria().andUseridEqualTo(currentUser.getId());
		List<Edit> editList = editMapper.selectByExample(ex);
		SimpleDateFormat sf = new SimpleDateFormat();
		for(Edit token:editList){
			User user = userMapper.selectByPrimaryKey(token.getUserid());
			WsAjjbxxb wsAjjbxxb = wsAjjbxxbMapper.selectByPrimaryKey(token.getAjxh());
			WritEdit we = new WritEdit();
			we.setAjxh(token.getAjxh());
			we.setLastEditTime(sf.format(token.getLastedittime()));
			we.setUserId(token.getUserid());
			we.setUsername(user.getUsername());
			we.setWritName(wsAjjbxxb.getAh());
		}
		result.setCode(0);
		result.setMessage(Result.CODE_0);
		result.setResult(editInfoList);
		
		return result;
	}

}
