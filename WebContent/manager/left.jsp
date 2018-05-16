<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>后台左侧导航</title>
    <link rel="stylesheet" rev="stylesheet" href="${pageContext.request.contextPath }/css/style.css" type="text/css" media="all" />
    <style type="text/css">
    	.menu{
    		display:none;
    		margin-left:10px;
    	}
    </style>
    <script type="text/javascript">
    	function test(e){
//  		$(e).style.display = $(e).style.display == 'block'? 'none':'block';
			var element = document.getElementById(e);
			element.style.display = element.style.display == 'block'? 'none':'block';
    	}
    </script>
  </head>
  <body>
  	<ul>
  		<li style="list-style-type:none"><img src="${pageContext.request.contextPath }/images/miniicon2.gif">
		  	<a href="#" onclick="test('menu1')" >分类管理
		  		<div id="menu1" class="menu">
		  			<a href="${pageContext.request.contextPath }/manager/addcategory.jsp" target="right" style="text-decoration:none">
		  			<img src="${pageContext.request.contextPath }/images/miniicon.gif" width="9" height="6" />添加分类</a><br/>
				  	<a href="${pageContext.request.contextPath }/manager/CategoryServlet?method=listall" target="right" style="text-decoration:none">
				  	<img src="${pageContext.request.contextPath }/images/miniicon.gif" width="9" height="6" />查看分类</a>
		  		</div>
  			</a> 
  		</li>
  		<br/><br/>
  		<li style="list-style-type:none"> <img src="${pageContext.request.contextPath }/images/miniicon2.gif">
		  	<a href="#" onclick="test('menu2')" >图书管理
		  		<div id="menu2" class="menu">
				  	 <a href="${pageContext.request.contextPath }/manager/BookServlet?method=addUI" target="right" style="text-decoration:none">
				  	 <img src="${pageContext.request.contextPath }/images/miniicon.gif" width="9" height="6" />添加图书</a><br/>
				  	 <a href="${pageContext.request.contextPath }/manager/BookServlet?method=list" target="right" style="text-decoration:none">
				  	 <img src="${pageContext.request.contextPath }/images/miniicon.gif" width="9" height="6" />查看图书</a>
			  	</div>
  			</a> 
  		</li>
  		<br/><br/>
  		<li style="list-style-type:none"><img src="${pageContext.request.contextPath }/images/miniicon2.gif">
		  	<a href="#" onclick="test('menu3')">订单管理
		  		<div id="menu3" class="menu">
				  	 <a href="${pageContext.request.contextPath }/manager/ListOrderServlet?state=False1" target="right" style="text-decoration:none">
				  	 <img src="${pageContext.request.contextPath }/images/miniicon.gif" width="9" height="6" />未发货订单</a><br/>
				  	 <a href="${pageContext.request.contextPath }/manager/ListOrderServlet?state=True1" target="right" style="text-decoration:none">
				  	 <img src="${pageContext.request.contextPath }/images/miniicon.gif" width="9" height="6" />已发货订单</a>
				</div>
  			</a> 
  		</li>
  		<br/><br/><a href="${pageContext.request.contextPath }/manager/right.jsp" target="right" style="color:#1C3F09">返回后台首页</a>
  	</ul>
  		<br/><br/><br/><br/><br/><br/><br/><br/><br/>		
      <td rowspan="2" style="width:10%">
      <img src="${pageContext.request.contextPath }/images/bottomlogo.gif" width="185" height="50" style="margin-left:1px"/>
      </td>
  </body>
</html>