<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>列出所有分类</title>
    <link rel="stylesheet" rev="stylesheet" href="${pageContext.request.contextPath }/css/style.css" type="text/css" media="all" />
  </head>
  
  <body style="text-align:center;">
  	<h2>分类信息</h2>
  	<table border="1" width="80%" align="center">
  		<tr style="text-align:center">
  			<td bgcolor="#A3E6DF" >分类名称</td>
  			<td bgcolor="#A3D7E6" >分类描述</td>
  			<td bgcolor="#A3CCE6" >操作</td>
  		</tr>
	    <c:forEach var="c" items="${categories }">
	    	<tr style="text-align:center">
	  			<td>${c.name }</td>
	  			<td>${c.description }</td>
	  			<td>
	  				<a href="#"><font color="#747556">删除</a>
	  				<a href="#"><font color="#747556">修改</a>
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
