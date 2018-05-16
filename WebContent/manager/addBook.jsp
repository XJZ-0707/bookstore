<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>添加图书</title>
    <link rel="stylesheet" rev="stylesheet" href="${pageContext.request.contextPath }/css/style.css" type="text/css" media="all" />
  </head>
  
  <body>
  <form action="${pageContext.request.contextPath }/manager/BookServlet?method=add" method="post" enctype="multipart/form-data">
    <table frame="border" width="50%">
    	<tr>
    		<td>图书名称</td>
    		<td>
    			<input type="text" name="name">
    		</td>
    	</tr>
    	<tr>
    		<td>作者</td>
    		<td>
    			<input type="text" name="author">
    		</td>
    	</tr>
    	<tr>
    		<td>售价</td>
    		<td>
    			<input type="text" name="price">
    		</td>
    	</tr>
    	<tr>
    		<td>图片</td>
    		<td>
    			<input type="file" name="file">
    		</td>
    	</tr>
    	<tr>
    		<td>图书描述</td>
    		<td>
    			<textarea rows="5" cols="40" name="description"></textarea>
    		</td>
    	</tr>
    	<tr>
    		<td>所属分类</td>
    		<td>
    			<select name="category_id">
    				<c:forEach var="c" items="${categories }">
    					<option value="${c.id }">${c.name }</option>
    				</c:forEach>
    			</select>
    		</td>
    	</tr>
    	<tr>
    		<td>
    			<input type="reset" value="清空">
    		</td>
    		<td>
    			<input type="submit" value="提交">
    		</td>
    	</tr>
    </table>
    </form>
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
