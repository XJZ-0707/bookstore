<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <html>
  <head>  
  	<meta charset="utf-8" />
    <title>首页头</title>
<link rel="stylesheet" rev="stylesheet" href="${pageContext.request.contextPath }/css/style.css" />
  </head>
  
  <body style="text-align:center;"  >
  <div style="float:right;">
    	<c:if test="${user==null }"> 
	    <form action="${pageContext.request.contextPath }/client/LoginServlet" method="post">
	    	<h5>
	    		用户名：<input type="text" name="username" style="width:60px;">
	    		密码：<input type="password" name="password" style="width:60px;">
	    		<input type="submit" value="登陆">
	    		<input type="button" value="注册" onclick="javascript:window.parent.body.location.href='${pageContext.request.contextPath }/client/register.jsp'">
	    	</h5>
	    </form>
	    </c:if>
	    
	    <c:if test="${user!=null }">
	    	<h5 style="color:  #1C3F09;"> 欢迎您：${user.username } <a href="${pageContext.request.contextPath }/client/LoginOutServlet" ">注销</a></h5>
	    </c:if>
    </div>
  	<td><img src="${pageContext.request.contextPath }/images/logo.gif" width="95" height="30" border="0" /></td>
	<font face="仿宋" color="#82B211" size="6">网上</font>
	<font face="楷体" color="#1C3F09" size="5">书屋</font>
    <br/>
    <div id="divmenu">
    	<c:forEach var="category" items="${categories }">
	    		<a href="${pageContext.request.contextPath }/client/IndexServlet?method=listBookWithCategory&category_id=${category.id}" style="text-decoration:none" >
	    <font face="楷体"><%-- ${category.name } --%>yashi</font> </a>
    	</c:forEach>
	    <a href="${pageContext.request.contextPath }/client/firsthead.jsp" target="body" style="color: #FFFFFF;">首页</a>&emsp; 
	    
	 <a href="${pageContext.request.contextPath }/client/IndexServlet?method=getAll" target="body" style="color: #FFFFFF;">文学</a>&emsp;  
	    <a href="${pageContext.request.contextPath }/client/IndexServlet?method=getAll" target="body" style="color: #FFFFFF;">生活</a>&emsp;
	    <a href="${pageContext.request.contextPath }/client/IndexServlet?method=getAll" target="body" style="color: #FFFFFF;">计算机</a>&emsp;  
	    <a href="${pageContext.request.contextPath }/client/IndexServlet?method=getAll" target="body" style="color: #FFFFFF;">外语</a> &emsp; 
	    <a href="${pageContext.request.contextPath }/client/IndexServlet?method=getAll" target="body" style="color: #FFFFFF;">经管</a> &emsp;
	    <a href="${pageContext.request.contextPath }/client/IndexServlet?method=getAll" target="body" style="color: #FFFFFF;">励志</a> &emsp; 
	    <a href="${pageContext.request.contextPath }/client/IndexServlet?method=getAll" target="body" style="color: #FFFFFF;">社科</a> &emsp;
	     <a href="${pageContext.request.contextPath }/client/IndexServlet?method=getAll" target="body" style="color: #FFFFFF;">学术</a> &emsp; 
	     <a	href="${pageContext.request.contextPath }/client/IndexServlet?method=getAll" target="body" style="color: #FFFFFF;">少儿</a> &emsp; 
	     <a href="${pageContext.request.contextPath }/client/IndexServlet?method=getAll" target="body" style="color: #FFFFFF;">艺术</a> 
	    &emsp;  &emsp;
	     <a href="${pageContext.request.contextPath }/client/IndexServlet?method=getAll" target="body" style="color: #FFFFFF;">所有商品</a>&emsp; 
	      &emsp; &emsp; &emsp; 
	    
	   <a href="${pageContext.request.contextPath }/client/listcart.jsp" target="body" style="color: #FFFF00">查看购物车</a>
	   <img src="${pageContext.request.contextPath }/images/cart.gif" /> &emsp;  &emsp;   
	    <a href="${pageContext.request.contextPath }/client/ClientListOrderServlet?userid=${user.id}" target="body"" style="color: #FFFF00">查看订单</a>
    </div>
   
  </body>
</html>

