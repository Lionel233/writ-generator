<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<jsp:include page="util.jsp" flush="true" />
<style>
.main-form .form-action {
	text-align: center;
	padding: 20px 0px;
}
</style>
<body>
	<div class="container">
		<form id="centerForm" action="api/login/test" method="post"
			enctype="multipart/form-data" class="form-horizontal">
			<div class="form-group">
				<label for="centerName" class="col-sm-2 control-label">案件种类</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="a" id="a"
						placeholder="案件种类">
				</div>
			</div>
			<div class="form-group">
				<label for="centerName" class="col-sm-2 control-label">原告</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="" placeholder="原告">
				</div>
			</div>
			<div class="form-group">
				<label for="centerAddress" class="col-sm-2 control-label">被告</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="" placeholder="被告">
				</div>
			</div>
			<div class="form-group">
				<label for="manager" class="col-sm-2 control-label">原告诉称</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="" placeholder="原告诉称">
				</div>
			</div>
			<div class="form-group">
				<label for="manager" class="col-sm-2 control-label">被告诉称</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="" placeholder="被告诉称">
				</div>
			</div>
			<div class="form-group">
				<label for="manager" class="col-sm-2 control-label">查明事实</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="" placeholder="查明事实">
				</div>
			</div>
			<div>
				<label for="manager" class="col-sm-2 control-label">原告提供证据</label>
				<div class="col-sm-10">
					<a id="submitBtn" class="button btn-md btn-green ajax"
						href="api/preview">新增证据</a>
				</div>
			</div>
			<jsp:include page="evi.jsp" flush="true" />
			<div class="form-group">
				<label for="manager" class="col-sm-2 control-label">被告提供证据</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="" placeholder="被告提供证据">
				</div>
			</div>
			<div class="form-group">
				<label for="manager" class="col-sm-2 control-label">判决结果</label>
				<div class="col-sm-8">
					<textarea class="form-control" rows="4" id="" placeholder="判决结果"></textarea>
				</div>
			</div>
		</form>
		<div class="form-action">
			<a id="submitBtn" class="button btn-md btn-green ajax"
				href="api/preview">预览</a> <a id="submitBtn"
				class="button btn-md btn-green ajax" href="javascript:submit()">保存</a>
		</div>
	</div>
</body>

<script type="text/javascript">
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