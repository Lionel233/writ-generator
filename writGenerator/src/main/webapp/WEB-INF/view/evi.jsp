<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <jsp:include page="util.jsp" flush="true" /> --%>

<div class="eviPage" id="ev_0" style="border:1px solid #F00">
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
			<select id="selectTeachPlan" class="select2">
				<option value="书证">书证</option>
				<option value="物证">物证</option>
				<option value="证人证言">证人证言</option>
				<option value="书证">书证</option>
				<option value="书证">书证</option>
				<option value="书证">书证</option>
			</select>
		</div>

	</div>
</div>

<script>
	$("#eviName").keydown(function(event) {
		if (event.which == "13") {
			$.ajax({
				url : "api/evTypeJudge",
				data : {
					"name" : $("#eviName").val()
				},
				type : "POST",
				success : function(r) {
					$("#selectTeachPlan").val("物证");
				}
			});
		}
	});
</script>