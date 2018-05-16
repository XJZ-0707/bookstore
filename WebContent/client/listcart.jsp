<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <html>
  <head>  
  	<meta charset="utf-8" />
    <title>购物车显示列表</title>
    <link rel="stylesheet" rev="stylesheet" href="${pageContext.request.contextPath }/css/style.css" type="text/css" media="all" />
 	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/trcolor.js"></script>
  </head>
  
  <body style="text-align:center;">
  	<c:if test="${user == null }">
  		对不起，请先登录
  	</c:if>
  	<c:if test="${user != null }">
  	<h2>购物车列表</h2>
    <table width="60%" border="1" align="center" style="text-align: center;" id="trcolor">
    	<tr><img src="${pageContext.request.contextPath }/ad/page_ad.jpg" width="766" height="89" /></tr>
    	<tr>
    		<td width="10%" bgcolor="#A3E6DF">书名</td>
    		<td width="10%" bgcolor="#A3E2E6">作者</td>
    		<td width="10%" bgcolor="#A3D7E6">单价</td>
    		<td width="10%" bgcolor="#A3D7E6">数量</td>
    		<td width="10%" bgcolor="#A3CCE6">小计</td>
    		<td width="10%" bgcolor="#A3CCE6">操作</td>
    	</tr>
    	<c:forEach var="me" items="${cart.map }">
    		<tr>
    			<td>${me.value.book.name }</td>
	    		<td>${me.value.book.author }</td>
	    		<td>${me.value.book.price }</td>
	    		<td>${me.value.quantity }</td>
	    		<td>${me.value.price }</td>
	    		<td>
	    			<a href="#"><font color="#747556">删除</a>
	    		</td>
    		</tr>
    	</c:forEach>
	</table>
	 <table width="60%" border="1" align="center" >
	 <tr style="text-align:right; padding-right:10px;"><font style="color:#FF6600; font-weight:bold">合计：&nbsp;&nbsp;${cart.price }元</font></tr>
    	<div style="text-align:center; margin-top:20px">
	 	<a href="${pageContext.request.contextPath }/client/IndexServlet?method=getAll" target="body" style="color: #FFFFFF;">
	 	<img src="${pageContext.request.contextPath }/images/gwc_jx.gif" border="0" /></a>
	 	&nbsp;&nbsp;&nbsp;&nbsp;
	 	<a href="${pageContext.request.contextPath }/client/OrderServlet"><img src="${pageContext.request.contextPath }/images/gwc_buy.gif" border="0" /></a>
	 </div>
	 </table>
	 
	 	<div id="divfoot">
  <table width="100%" border="0" cellspacing="0">
    <tr>
      <td rowspan="2" style="width:10%"><img src="${pageContext.request.contextPath }//images/bottomlogo.gif" width="195" height="50" style="margin-left:175px"/></td>
      <td style="padding-top:5px; padding-left:50px"><a href="#"><font color="#747556"><b>CONTACT US</b></font></a></td>
    </tr>
    <tr>
      <td style="padding-left:50px"><font color="#CCCCCC"><b>COPYRIGHT 2008 &copy; eShop All Rights RESERVED.</b></font></td>
    </tr>
  </table>
	</c:if>
   </body>
</html>