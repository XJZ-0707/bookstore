<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>添加分类</title>
    <link rel="stylesheet" rev="stylesheet" href="${pageContext.request.contextPath }/css/style.css" type="text/css" media="all" />
  </head>
  
  <body>
    <form action="${pageContext.request.contextPath }/manager/CategoryServlet?method=add" method="post">
    	分类名称：<input type="text" name="name"><br/><br/>
    	分类描述：<textarea rows="5" cols="40" name="description"></textarea>
    	<input type="submit" value="添加">
    </form>
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
