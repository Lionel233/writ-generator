<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="util.jsp" flush="true" />

<div>
	<div class="form-group">
		<label for="manager" class="col-sm-2 control-label">名称</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="" placeholder="证据名称">
		</div>
	</div>
	<div class="form-group">
		<label for="manager" class="col-sm-2 control-label">明细</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="" placeholder="证据明细">
		</div>
	</div>
	<div class="form-group">
		<label for="manager" class="col-sm-2 control-label">以证明</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="" placeholder="证据目的">
		</div>
	</div>
	<div class="form-group">
		<label for="manager" class="col-sm-2 control-label">种类</label>
		<div class="dropdown">
			<button type="button" class="btn dropdown-toggle" id="dropdownMenu1"
				data-toggle="dropdown">
				主题 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
				<li role="presentation"><a role="menuitem" tabindex="-1"
					href="#">Java</a></li>
				<li role="presentation"><a role="menuitem" tabindex="-1"
					href="#">数据挖掘</a></li>
				<li role="presentation"><a role="menuitem" tabindex="-1"
					href="#">数据通信/网络</a></li>
				<li role="presentation" class="divider"></li>
				<li role="presentation"><a role="menuitem" tabindex="-1"
					href="#">分离的链接</a></li>
			</ul>
		</div>
	</div>
</div>