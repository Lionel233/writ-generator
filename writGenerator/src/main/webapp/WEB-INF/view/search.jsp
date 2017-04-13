<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="util.jsp" flush="true" />

<style type="text/css">

#code {
	float: left;
	height: 40px;
	width: 400px;
}

#searchBtn2 {
	height: 40px;
	line-height: 30px;
	font-size: 16px;
	padding: 0 15px;
	margin: 0 10px;
}
</style>
<body>
	<form id="searchForm" action="api/codeRecord" method="post" style="position: relative; margin: 100px;">
		<input type="search" name="code" id="code" class="form-control"
			placeholder="输入暗号">
		<button type="button" id="searchBtn2" class="btn btn-primary">
			<span class="glyphicon glyphicon-search"></span>&nbsp;&nbsp;搜索
		</button>
	</form>
</body>

<script type="text/javascript">
$("#searchBtn2").click(function() {
	$.ajax({
		url : "api/searchCode",
		data : {"code":$("#code").val()},
		type : "POST",
		success : function(r) {
			if (r) {
				$("#searchForm").submit();
			} else {
				alert("更新失败，点击确定重新载入编辑页面");
			}
		}
	});
}
);

</script>
