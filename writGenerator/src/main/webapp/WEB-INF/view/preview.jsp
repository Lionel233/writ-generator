<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="util.jsp" flush="true" />


<body>
	<t:header currentModule="在线预览" />
	<div class="container">
		<h3 align="center">${writModel.ajjbxxb.jbfy}
			${writModel.ajjbxxb.wsmc} ${writModel.ajjbxxb.ah}</h3>

		<!-- 当事人 -->
		<c:forEach items="${writModel.litigantList}" var="litigant">
			${litigant.wsDsrb.dsrlb}${litigant.wsDsrb.xm}
			<!-- 职务 -->
			<c:if test="${!empty litigant.wsDsrb.zw}">
				，${litigant.wsDsrb.zw}
			</c:if>
			<!-- 地址 -->
			<c:if test="${!empty litigant.wsDsrb.dz}">
				，${litigant.wsDsrb.dz}
			</c:if>。
		</c:forEach>


<%-- 		<!-- 开庭 -->

		<!-- 案件基本情况 -->
		<!-- 当事人（诉／辩）称 -->
		<c:forEach items="${writModel.argueList}" var="argue">
			${argue.litigant}称，${argue.argument}
		</c:forEach>

		<!-- 查明事实段 -->
		<c:forEach items="${writModel.argueList}" var="argue">
			${argue.litigant}，${argue.argument}
		</c:forEach>

		<!-- 证据段 -->


		<!-- 裁判分析过程 -->

		<!-- 判决结果 --> --%>

		<div class="form-action"
			style="width: 200px; float: none; display: block; margin-left: auto; margin-right: auto;">
			<a id="previewBtn" class="button btn-md btn-green ajax"
				href="javascript:preview()">返回</a> <a id="submitBtn"
				class="button btn-md btn-green ajax" href="javascript:submit()">保存</a>
		</div>
	</div>
</body>

