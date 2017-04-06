<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <jsp:include page="util.jsp" flush="true" /> --%>

<div class="eviPage" id="0">
	<div class="form-group">
		<label for="manager" class="col-sm-2 control-label">名称</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="eviName"
				placeholder="证据名称">
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
		<div class="col-sm-4">
			<div class="dropdown">
				<button class="btn btn-default dropdown-toggle" type="button"
					id="menu1" data-toggle="dropdown">
					证据种类 <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
					<li role="presentation"><a class="menuitem" role="menuitem" tabindex="-1"
						href="#">证人证言</a></li>
					<li role="presentation"><a class="menuitem" role="menuitem" tabindex="-1"
						href="#">书证</a></li>
					<li role="presentation"><a class="menuitem" role="menuitem" tabindex="-1"
						href="#">物证</a></li>
					<li role="presentation"><a class="menuitem" role="menuitem" tabindex="-1"
						href="#">视听资料</a></li>
					<li role="presentation"><a class="menuitem" role="menuitem" tabindex="-1"
						href="#">当事人陈述</a></li>
					<li role="presentation"><a class="menuitem" role="menuitem" tabindex="-1"
						href="#">鉴定结论</a></li>
					<li role="presentation"><a class="menuitem" role="menuitem" tabindex="-1"
						href="#">笔录</a></li>
					<li role="presentation"><a class="menuitem" role="menuitem" tabindex="-1"
						href="#">其它</a></li>
				</ul>
			</div>
		</div>

	</div>
</div>

<script>
$(document).ready(function(){
	$(".menuitem").click(function(){
		$("#menu1").text($(this).text());
	});
});
</script>