<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<link href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet" type="text/css" />
  </head>
  
<body style="text-align: center;background-image : url(${pageContext.request.contextPath}/images/1223.jpg);background-repeat : no-repeat;" >
<br />
<a href="${pageContext.request.contextPath}">首页</a>${sessionScope.hehe}
<a href="${pageContext.request.contextPath}/manager/welcome.jsp">后台管理</a>
<span style="width: 600px"></span>
<c:if test="${sessionScope.user==null }">
<a href="${pageContext.request.contextPath}/client/login.jsp">登陆</a>
<a href="${pageContext.request.contextPath}/client/regist.jsp">注册</a>
</c:if>
<c:if test="${sessionScope.user!=null }">
	欢迎您：${sessionScope.user.username}&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/servlet/ClientServlet?operation=zx">注销</a>
</c:if>
<a href="${pageContext.request.contextPath}/servlet/ClientServlet?operation=showUsersOrders">我的订单</a>
<a href="${pageContext.request.contextPath}/client/showCart.jsp">购物车</a>
<br />
<br />
<script language="javascript">
	function qiehuan(num){
		for(var id = 0;id<=9;id++)
		{
			if(id==num)
			{
				document.getElementById("qh_con"+id).style.display="block";
				document.getElementById("mynav"+id).className="nav_on";
			}
			else
			{
				document.getElementById("qh_con"+id).style.display="none";
				document.getElementById("mynav"+id).className="";
			}
		}
	}
</script>
<div id=menu_out >
  <div id=menu_in>
    <div id=menu>
      <UL id=nav>
        <LI><A class=nav_on id=mynav0 onmouseover=javascript:qiehuan(0) href="#"><SPAN>所有分类</SPAN></A></LI>
        <LI class="menu_line"></LI>
      </UL>
      <div id=menu_con>
        <div id=qh_con0 style="DISPLAY: block">
          <UL>
          <c:forEach items="${sessionScope.cs}" var="c">
          
            <LI><A href="${pageContext.request.contextPath}/servlet/ClientServlet?operation=showCategoryBooks&categoryId=${c.id}"><SPAN>${c.name}</SPAN></A></LI>
            <LI class=menu_line2></LI>
           </c:forEach>
          </UL>
        </div>
      </div>
    </div>
  </div>
</div>