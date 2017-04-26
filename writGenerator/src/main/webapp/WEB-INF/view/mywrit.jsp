<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="util.jsp" flush="true" />
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>


<body>
	<t:header currentModule="我的文书" />
	<div class="container">
		<table data-toggle="table" data-pagination="true" data-url="getWritList">
			<thead>
				<tr>
					<th data-width="80" data-formatter="operateFormatter">文书</th>
					<th data-width="20" data-field="date" data-align="">编辑日期</th>
				</tr>
			</thead>
		</table>
	</div>
</body>

<script type="text/javascript">
	function operateFormatter(value, row, index) {
		return '<a class="ml10" href="showWrit?id=' + row.id +'">'+row.name+'</a>';
	}
</script>
