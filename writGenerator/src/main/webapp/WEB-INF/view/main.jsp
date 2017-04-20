
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<jsp:include page="util.jsp" flush="true" />
<style>
.main-form .form-action {
	text-align: center;
	padding: 20px 0px;
}
</style>

<body>
	<t:header currentModule="在线编辑" />
	<div class="container">
		<div class="form-horizontal">
			<div class="form-group">
				<label for="centerName" class="col-sm-2 control-label">文书名称</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" placeholder="文书名称">
				</div>
			</div>
			<div class="form-group">
				<label for="centerName" class="col-sm-2 control-label">经办法院</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" placeholder="经办法院">
				</div>
			</div>
			<div class="form-group">
				<label for="centerName" class="col-sm-2 control-label">案号</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" placeholder="案号">
				</div>
			</div>
			<div class="form-group">
				<label for="centerName" class="col-sm-2 control-label">案件种类</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" placeholder="案件种类">
				</div>
			</div>
			<div class="panel-group" style="width: 300px; margin-left: 100px">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" href="#hidden-list">当事人</a>
						</h4>
					</div>
					<div id="hidden-list" class="panel-collapse collapse">
						<ul class="list-group">
							<c:forEach items="${writModel.litigantList}" var="litigant">
								<li class="list-group-item">${litigant.wsDsrb.dsrlb}
									${litigant.wsDsrb.xm}</li>
							</c:forEach>
						</ul>
						<div class="panel-footer"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<form id="centerForm" action="api/login/test" method="post"
		enctype="multipart/form-data" class="form-horizontal">
		<div class="form-group">
			<label for="manager" class="col-sm-2 control-label">原告诉称</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" id="" placeholder="原告诉称">
			</div>
		</div>
		<div class="form-group">
			<label for="manager" class="col-sm-2 control-label">被告辩称</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" id="" placeholder="被告辩称">
			</div>
		</div>
		<div class="form-group">
			<label for="manager" class="col-sm-2 control-label">查明事实</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" id="" placeholder="查明事实">
			</div>
		</div>

		<div class="row clearfix">
			<div class="col-md-11 column">
				<div class="form-group evi"
					style="border: 1px dotted black; width: 800px; margin-left: 60px; float: left">
					<div class="form-group">
						<label for="manager" class="col-sm-4 control-label"> <select
							id="" class="select2">
								<c:forEach items="${writModel.litigantList}" var="litigant">
									<option value="${litigant.wsDsrb.dsrlb} ${litigant.wsDsrb.xm}">${litigant.wsDsrb.dsrlb}
										${litigant.wsDsrb.xm}</option>
								</c:forEach>
						</select>提供证据
						</label>
						<div class="col-sm-2">
							<a id="addNewEvBtn" class="button btn-md btn-green ajax">+</a>
						</div>
					</div>
					<div id="eviPageContainer"></div>
				</div>
			</div>
			<div class="col-md-1 column" style="margin-top: 100px">
				<a id="addEviSub" class="button btn-md btn-green ajax">+</a>
			</div>
		</div>


		<div class="form-group">
			<label for="manager" class="col-sm-2 control-label">判决结果</label>
			<div class="col-sm-8">
				<textarea class="form-control" rows="4" id="" placeholder="判决结果"></textarea>
			</div>
		</div>
	</form>
	<div class="form-action"
		style="width: 200px; float: none; display: block; margin-left: auto; margin-right: auto;">
		<a id="submitBtn" class="button btn-md btn-green ajax" href="preview">预览</a>
		<a id="submitBtn" class="button btn-md btn-green ajax"
			href="javascript:submit()">保存</a>
	</div>
</body>

<script type="text/javascript">
	var movies = [ {
		id : 0,
		name : "",
		detail : "",
		prove : "",
		type : "书证"
	} ];

	$(document).ready(function() {
		$.template("innerlayer", innerLayer);
		$.tmpl("innerlayer", movies).appendTo("#eviPageContainer");

		$("#addNewEvBtn").click(function() {
			movies.push({
				id : movies.length,
				name : "",
				detail : "",
				prove : "",
				type : "书证"
			});
			$("#eviPageContainer").empty();
			$.tmpl("innerlayer", movies).appendTo("#eviPageContainer");
		});
	});

	function submit() {
		$.ajax({
			url : $("#centerForm").attr("action"),
			data : $("#centerForm").serialize(),
			type : "POST",
			success : function(r) {
				if (r == '0') {
					alert("保存成功，点击确定返回中心列表", function() {
						location.href = "CenterList";
					});
				} else {
					alert("更新失败，点击确定重新载入编辑页面");
				}
			}
		});
	}
</script>