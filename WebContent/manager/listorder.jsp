<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>显示订单</title>
    <link rel="stylesheet" rev="stylesheet" href="${pageContext.request.contextPath }/css/style.css" type="text/css" media="all" />
 	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/trcolor.js"></script>
  </head>
  
  <body style="text-align:center;">
    <h2>订单列表</h2>
    <table width="85%" border="1" align="center" style="text-align: center;" id="trcolor">
    	<tr>
    		<td bgcolor="#A3E6DF">订单号</td>
    		<td bgcolor="#A3E2E6">订单人</td>
    		<td bgcolor="#A3D7E6">订单时间</td>
    		<td bgcolor="#A3CCE6">订单总价</td>
    		<td bgcolor="#A3B6E6">订单状态</td>
    		<td bgcolor="#A3B6E6">操作</td>
    	</tr>
    	<c:forEach var="order" items="${orders }">
    		<tr>
    			<td>${order.id }</td>
	    		<td>${order.user.username }</td>
	    		<td>${order.ordertime }</td>
	    		<td>${order.price }</td>
	    		<td>${order.state=='True1'?'已发货':'未发货' }</td>
	    		<td>
	    			<a href="${pageContext.request.contextPath }/manager/OrderDetailServlet?orderid=${order.id}">查看明细</a>
	    			<a href="#"><font color="#747556">删除</a>
	    		</td>
    		</tr>
    	</c:forEach>
	</table>
	<br>
   <br>
  
	  <div id="divfoot">
  <table width="100%" border="0" cellspacing="0">
    <tr>
      <td rowspan="2" style="width:10%"><img src="${pageContext.request.contextPath }/images/bottomlogo.gif" width="195" height="50" style="margin-left:175px"/></td>
      <td style="padding-top:5px; padding-left:50px"><a href="#"><font color="#747556"><b>CONTACT US</b></font></a></td>
    </tr>
    <tr>
      <td style="padding-left:50px"><font color="#CCCCCC"><b>COPYRIGHT 2008 &copy; eShop All Rights RESERVED.</b></font></td>
    </tr>
  </table>
</div>
  </body>
</html>
