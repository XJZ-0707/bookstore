<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
  	<meta charset="utf-8" />
    <title>首页体</title>
    <link rel="stylesheet" rev="stylesheet" href="${pageContext.request.contextPath }/css/style.css" type="text/css" media="all" />
  </head>
  
  <body style="text-align:center;">
 
    <div id="content" style="margin:0 auto;width:980px;">
    	<div id="divpagecontent" style="float:left; width:200px; border:0px solid gray; text-align:left; height:600px;"> 
    		<td class="listtitle">
    		<h3><font face="楷体">图书分类</font></h3>
    		<hr />
    		</td>
    		<br>
    		<ul>		
	    		<c:forEach var="category" items="${categories }">
	    			<li style="list-style-type:none">
	    				<img  src="${pageContext.request.contextPath }/images/miniicon.gif">
	    				<a href="${pageContext.request.contextPath }/client/IndexServlet?method=listBookWithCategory&category_id=${category.id}" style="text-decoration:none" >
	    				<font face="楷体">${category.name }</font></a>
	    			</li>
	    			<hr />
	    		</c:forEach>
    		</ul>	
    	</div>
    	<div class="listcontent" id="bookandpage"  style="float:left; margin-left:10px;">   		
    		<div id="books" >
    			 <div style="margin-top:20px; margin-bottom:5px"><img src="${pageContext.request.contextPath }/images/productlist.gif" width="581" height="23" /></div>
    			<c:forEach var="book" items="${page.list }">
    				<div id="book" style="height:150; margin-top:20px;">
    					<div id="image" style="float:left;">
    						<img src="${pageContext.request.contextPath }/images/${book.image}" height=150 width=100>
    					</div>
    					<div id="bookinfo" style="float:left; text-align:left;">
    						<ul>
    							<li>书名：${book.name }</li>
    							<li>作者：${book.author }</li>
    							<li>售价：${book.price }</li>
    							<li>简述：<font face="楷体">${book.description }</font></li>
    							<li>
    								<a href="${pageContext.request.contextPath }/client/BuyServlet?bookid=${book.id}">加入购物车</a>
    							</li>
    						</ul>
    					</div>
    				</div>
    				<div style="clear:both"></div><!-- 做div浮动后，为了不影响后续页面的显示，在这里清楚浮动效果 -->
    			</c:forEach>
    		</div>
    		<div style="clear:both"></div><!-- 做div浮动后，为了不影响后续页面的显示，在这里清楚浮动效果 -->
    		
    		<div id="pagination" style="margin-top:20px; text-align:center;">
    			当前第[${page.pagenum }]页 &nbsp;&nbsp;
			    <c:forEach var="pagenum" begin="${page.startpage }" end="${page.endpage }">
			    	[<a href="${pageContext.request.contextPath }/client/IndexServlet?method=${param.method }&pagenum=${pagenum}&category_id=${param.category_id}">${pagenum }</a>]
			    </c:forEach>
			    &nbsp;&nbsp;
			    总共[${page.totalpage }]页，共[${page.totalrecord }]条记录
    		</div>
    	</div>
    </div>
    <br><br>    <br><br>    <br><br>
    <div id="divfoot">
  <table width="100%" border="0" cellspacing="0">
    <tr>
      <td rowspan="2" style="width:10%"><img src="${pageContext.request.contextPath }/images/bottomlogo.gif" width="295" height="50" style="margin-left:175px"/></td>
      <td style="padding-top:5px; padding-left:50px"><a href="#"><font color="#747556"><b>CONTACT US</b></font></a></td>
    </tr>
    <tr>
      <td style="padding-left:50px"><font color="#CCCCCC"><b>COPYRIGHT 2008 &copy; eShop All Rights RESERVED.</b></font></td>
    </tr>
  </table>
</div>
  </body>
</html>
