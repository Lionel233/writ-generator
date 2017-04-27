<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="util.jsp" flush="true" />
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>


<body>
	<t:header currentModule="管理" />
	<div class="container">
		<div class="container wb">
			<div id="toolbar" class="content-operate">
				<div class="content-operate-right">
					<a class="button btn-green" href="javascript:addSemester();">添加法官</a>
				</div>
			</div>
			<table id="userTable" data-toggle="table" data-pagination="true"
				data-url="getWritList">
				<thead>
					<tr>
						<th data-width="80" data-formatter="nameFormatter">姓名</th>
						<th data-width="20" data-field="date" data-align="">联系电话</th>
						<th data-width="20" data-field="date" data-align="">所属法院</th>
						<th data-width="80" data-formatter="operateFormatter">操作</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>
</body>

<script type="text/javascript">
	var NO_EDITTING = -1;
	var workingRowId = NO_EDITTING;

	function nameFormatter(value, row, index) {
		return '<a class="ml10" href="showWrit?id=' + row.name + '">'
				+ row.name + '</a>';
	}

	function operateFormatter(value, row, index) {
		return [ '<a href="javascript:editUser(' + row.id + ')" title="编辑">',
				'<i class="glyphicon glyphicon-edit"></i>', '</a>  ',
				'<a href="javascript:deleteUser(' + row.id + ')" title="删除">',
				'<i class="glyphicon glyphicon-remove"></i>', '</a>', ]
				.join('');
	}

	function deleteUser(id) {
		if (workingRowId != NO_EDITTING) {
			bootbox.alert("您已经开始编辑，请保存或取消当前修改后再试。");
		} else {
			bootbox.confirm("是否删除", function(r) {
				if (r) {
					$("#userTable").bootstrapTable('refresh', {
	                    url: 'deleteAndShowUser?id='+id
	                });
				}
			});
		}
	}
</script>