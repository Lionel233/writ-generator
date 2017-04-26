<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="util.jsp" flush="true" />
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>


<body>
	<t:header currentModule="我的文书" />
	<div class="container">
		<table data-toggle="table" data-height="246" data-pagination="true">
			<thead>
				<tr>
					<th data-field="state" data-checkbox="true"></th>
					<th data-field="id" data-align="right">Item ID</th>
					<th data-field="name" data-align="center">Item Name</th>
					<th data-field="price" data-align="">Item Price</th>
					<th data-width=11% data-field="operateFormatter"
						data-formatter="operateFormatter">操作</th>

				</tr>
			</thead>
		</table>
	</div>
</body>

<script type="text/javascript">
	function operateFormatter(value, row, index) {
		return [ '<button class="btn btn-primary resend">重新发送邀请</button>' ]
				.join('');
	}
</script>
