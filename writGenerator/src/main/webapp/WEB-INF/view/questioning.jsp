<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<body>
	<div class="form-group">
		<label for="manager" class="col-sm-2 control-label">证据</label>
		<div class="col-sm-1 div-inline">
			<select id="selectTeachPlan" class="select2">
				<option value="书证">书证</option>
				<option value="物证">物证</option>
				<option value="证人证言">证人证言</option>
				<option value="视听资料">视听资料</option>
				<option value="当事人陈述">当事人陈述</option>
				<option value="鉴定结论">鉴定结论</option>
				<option value="笔录">笔录</option>
				<option value="其它">其它</option>
			</select>
		</div>
		<div class="col-sm-2 div-inline" style="margin-left:50px">
			可信 <input type="radio" checked="checked" name="questioning"
				value="dependable" /> 不可信<input type="radio" name="questioning"
				value="undependable" />
		</div>
		<label class="col-sm-2 control-label" style="width:80px">备注</label>
		<div class="col-sm-2">
			<input type="text" class="form-control">
		</div>
	</div>
</body>
