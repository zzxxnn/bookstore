<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/client/header.jsp"%>
	<h1>用户登录</h1>
    <form action="${pageContext.request.contextPath}/servlet/ClientServlet?operation=login" method="post">
    	<table border="1" width="660">
	    	<tr>
	    		<td>用户名</td>
	    		<td>
	    			<input type="text" name="username"/>
	    		</td>
	    	</tr>
	    	<tr>
	    		<td>密码</td>
	    		<td>
	    			<input type="password" name="password"/>
	    		</td>
	    	</tr>
	    	<tr>
	    		<td>
	    			验证码：<img src="${pageContext.request.contextPath}/servlet/ClientServlet?operation=getimage"/>
	    		</td>
	    		<td>
	    			<input type="text" name="code"/>
	    		</td>
	    	</tr>
	    	<tr>
	    		<td colspan="2">
	    			<input type="submit" value="登陆"/>
	    		</td>
	    	</tr>
    	</table>
    </form>
  </body>
</html>