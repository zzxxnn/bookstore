<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/manager/header.jsp"%>
<h1>未发货订单</h1>
		<table border="1" width="88%">
			<tr>
				<th>用户</th>
				<th>订单号</th>
				<th>金额</th>
				<th>订单状态</th>
				<th>明细</th>
			</tr>
			<c:forEach items="${os}" var="o">
				<tr>
				<td>${o.user.username}</td>
				<td>${o.ordernum}</td>
				<td>$${o.price}元</td>
				<td>${o.ordernum}</td>
				<td>${o.state==0?'未发货':'已发货'}</td>
				<td>
					<a href="${pageContext.request.contextPath}/servlet/ManagerServlet?operation=showOrderDetail&ordersId=${o.id}">查看明细</a>
				</td>
			</tr>
			</c:forEach>
			
		</table>
	</body>
</html>
