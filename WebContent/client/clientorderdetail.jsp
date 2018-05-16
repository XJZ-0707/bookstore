<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>订单明细</title>
    <link rel="stylesheet" rev="stylesheet" href="${pageContext.request.contextPath }/css/style.css" type="text/css" media="all" />
  </head>
  
  <body style="text-align:center;">
  	<h3>订单明细</h3>
    <table border="1" width="50%" align="center" style="text-align: center;">
    	<tr>
    		<td bgcolor="#A3E6DF" class="tableopentd01">书名</td>
    		<td bgcolor="#A3E2E6" class="tableopentd01">售价</td>
    		<td bgcolor="#A3D7E6" class="tableopentd01">数量</td>
    		<td bgcolor="#A3CCE6" class="tableopentd01">应收货款</td>
    	</tr>
    	<c:forEach var="orderitem" items="${order.orderitems }">
    	<tr>
    		<td>${orderitem.book.name }</td>
    		<td>${orderitem.book.price }</td>
    		<td>${orderitem.quantity }</td>
    		<td>${orderitem.price }</td>
    	</tr>
    	</c:forEach>
    	
    	<tr>
    		<td>订单总价</td>
    		<td colspan="3">${order.price }</td>
    	</tr>
    	
    </table>
    
    <h3>收货人详细信息</h3>
    <table border="1" width="50%" align="center" style="text-align: center;">  
    	<tr>
    		<td bgcolor="#A3E6DF" class="tableopentd01">用户</td>
    		<td bgcolor="#A3E2E6" class="tableopentd01">电话</td>
    		<td bgcolor="#A3D7E6" class="tableopentd01">手机</td>
    		<td bgcolor="#A3CCE6" class="tableopentd01">地址</td>
    		<td bgcolor="#A3B6E6" class="tableopentd01">邮箱</td>
    	</tr>
    	<tr>
    		<td>${order.user.username }</td>
    		<td>${order.user.phone }</td>
    		<td>${order.user.cellphone }</td>
    		<td>${order.user.address }</td>
    		<td>${order.user.email }</td>
    	</tr>
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
