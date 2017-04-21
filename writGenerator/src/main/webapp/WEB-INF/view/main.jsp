
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ page import="main.java.generator.model.WritModel"%>
<jsp:include page="util.jsp" flush="true" />
<style>
.main-form .form-action {
	text-align: center;
	padding: 20px 0px;
}

a.button.plus {
	margin: 3px;
	width: 50px;
	height: 10px;
	line-height: 10px;
	text-align: center;
	text-decoration: none;
	cursor: pointer;
	background: #FFF;
	color: red;
	border-radius: 1px;
	border: 2px solid red;
	padding: 5px 10px;
	height: 10px;
	line-height: 40px;
	font-size: 12px;
	border-radius: 50%;
	width: 50px;
}
</style>

<body>
	<t:header currentModule="在线编辑" />
	<div class="container">
		<div class="form-horizontal">
			<div class="form-group">
				<label for="centerName" class="col-sm-2 control-label">文书名称</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="wsmc"
						value="${writModel.ajjbxxb.wsmc}">
				</div>
			</div>
			<div class="form-group">
				<label for="centerName" class="col-sm-2 control-label">经办法院</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="jbfy"
						value="${writModel.ajjbxxb.jbfy}">
				</div>
			</div>
			<div class="form-group">
				<label for="centerName" class="col-sm-2 control-label">案号</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="ah"
						value="${writModel.ajjbxxb.ah}">
				</div>
			</div>
			<div class="form-group">
				<label for="centerName" class="col-sm-2 control-label">案件种类</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="ajzl"
						value="${writModel.ajjbxxb.ajxz} ${writModel.ajjbxxb.spcx}">
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

		<form id="centerForm" action="login/test" method="post"
			enctype="multipart/form-data" class="form-horizontal">
			<div class="form-group">
				<label for="manager" class="col-sm-2 control-label">原告诉称</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="" placeholder="原告诉称">
				</div>
			</div>
			<div class="form-group">
				<label for="manager" class="col-sm-2 control-label">被告辩称</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="" placeholder="被告辩称">
				</div>
			</div>
			<div class="form-group">
				<label for="manager" class="col-sm-2 control-label">查明事实</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="" placeholder="查明事实">
				</div>
			</div>

		<div class="row clearfix">
				<div class="col-md-11 column" id="outerContainer"></div>
				<div class="col-md-1 column" style="margin-top: 50px">
					<a id="addEviSub" class="button plus btn-md btn-green ajax">+</a>
				</div>
			</div>

			<div class="row clearfix">
				<div class="col-md-11 column">
					<div class="form-group evi"
						style="border: 1px dotted black; width: 800px; margin-left: 60px; float: left">
						<div class="form-group">
							<label for="manager" class="col-sm-7 control-label"> <select
								id="" class="select2">
									<option value="法院">法院</option>
									<c:forEach items="${writModel.litigantList}" var="litigant">
										<option value="${litigant.wsDsrb.dsrlb} ${litigant.wsDsrb.xm}">${litigant.wsDsrb.dsrlb}
											${litigant.wsDsrb.xm}</option>
									</c:forEach>
							</select>对 <select id="" class="select2">
									<c:forEach items="${writModel.litigantList}" var="litigant">
										<option value="${litigant.wsDsrb.dsrlb} ${litigant.wsDsrb.xm}">${litigant.wsDsrb.dsrlb}
											${litigant.wsDsrb.xm}</option>
									</c:forEach>
							</select>提供证据的质证
							</label> <input type="checkbox" name="affirm" value="予以确认">予以确认
							<div class="col-sm-2">
								<a id="addNewExamBtn" class="button plus btn-md btn-green ajax">+</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-1 column" style="margin-top: 20px">
					<a id="addExamSub" class="button plus btn-md btn-green ajax">+</a>
				</div>
			</div>


			<div class="form-group">
				<label for="manager" class="col-sm-2 control-label">判决结果</label>
				<div class="col-sm-7">
					<textarea class="form-control" rows="4" id="" placeholder="判决结果"></textarea>
				</div>
			</div>
		</form>
		<div class="form-action"
			style="width: 200px; float: none; display: block; margin-left: auto; margin-right: auto;">
			<a id="previewBtn" class="button btn-md btn-green ajax"
				href="javascript:preview()">预览</a> <a id="submitBtn"
				class="button btn-md btn-green ajax" href="javascript:submit()">保存</a>
		</div>
	</div>

</body>

<script type="text/javascript">
	var litigantList = [];
	<c:forEach items="${writModel.litigantList}" var="litigant">
		litigantList.push({
			content: "${litigant.wsDsrb.dsrlb} ${litigant.wsDsrb.xm}"
		})
	</c:forEach>

	var movies = [ {
		id : 0,
		name : "",
		detail : "",
		prove : "",
		type : "书证",
		movieSeries_id : 0
	} ];
	
	var movieSeries = [{
		id : 0,
		selectorValue:""
	}];

	$(document).ready(function() {
		$.template("innerlayer", innerLayer);
		$.template("outerLayer", outerLayer);
		$.tmpl("outerLayer", movieSeries).appendTo("#outerContainer");
		$.tmpl("innerlayer", movies).appendTo("#eviPageContainer_0");
		
		$("#addEviSub").click(function() {
			movieSeries.push({
				id: movieSeries.length,
				selectorValue:""
			});
			$("#outerContainer").empty();
			$.tmpl("outerLayer", movieSeries).appendTo("#outerContainer"); 
			for(var i = 0;i < movieSeries.length;i ++){
				showEvSeries(i);
			}
		});

	});

	//保存
	function submit() {
		$("centerForm").attr("action", "login/test");
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

	//预览
	function preview() {
		$.ajax({
			url : "pre",
			data : {"writModel":"${writModel}","data":$("#centerForm").serializeArray()},
			type : "POST",
			success : function(r) {
				$("#centerForm").attr("action", "preview");
				$("#centerForm").submit();
			}
		});
	}
</script>