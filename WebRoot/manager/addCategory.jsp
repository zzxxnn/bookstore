<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/manager/header.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
  <body style="text-align: center;">
	<hr/>
	<h1>添加新的分类</h1>
	<form action="${pageContext.request.contextPath}/servlet/ManagerServlet?operation=addCategory" method="post">
		<table border="1" width="66%">
			<tr>
				<td>*分类名称</td>
				<td>
					<input type="text" name="name"/>
				</td>
			</tr>
			<tr>
				<td>描述</td>
				<td>
					<textarea rows="3" cols="38" name="description"></textarea>
				</td>
			</tr><tr>
				<td colspan="2">
				<input type="submit" value="保存"/>
				</td>
			</tr>
		</table>
	
	</form>
	${message}
  </body>
</html>
	