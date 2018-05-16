<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  	<head>
		<meta charset="UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/jsp; charset=gb2312" />
<meta content="all" name="robots"/>
<meta name="author" content="Fisher" />
<meta name="Copyright" content="Copyright 2007-2008, 版权所有 www.reefdesign.cn" />
<meta name="description" content="reefdesign" />
<meta name="keywords" content="reefdesign" />
<title>电子书城</title>
<link rel="shortcut icon" href="favicon.ico" >
<link rel="stylesheet" rev="stylesheet" href="${pageContext.request.contextPath }/css/style.css" type="text/css" media="all" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/registervalid.js"></script>
</head>

<body class="main">

<div id="divcontent" align="center">
<form action="${pageContext.request.contextPath }/client/RegisterServlet" method="post">
<table width="850px" border="0" cellspacing="0">
  <tr>
    <td style="padding:30px"><h2>新会员注册</h2>
<table width="70%" border="0" cellspacing="2" class="upline">
  <tr>
    <td style="text-align:right; width:20%">*会员邮箱：</td>
    <td style="width:40%"><input type="text" id="email" class="textinput" placeholder="请输入邮箱"
    	 name="email" onfocus="focusObj(this)" onblur="blurNotNull(this)"/></td>
    <td><font color="#747556">*号信息为必填，不能为空</td>
  </tr>
  <tr>
    <td style="text-align:right">*会员名：</td>
    <td><input type="text"   name="username" id="user" placeholder="请输入会员名"
    	onfocus="focusObj(this)" onblur="blurNotNull(this)"/></td>
  </tr>
  <tr>
    <td style="text-align:right">*密码：</td>
    <td><input type="password" class="textinput" name="password" placeholder="请输入密码"
    	id="pwd" onfocus="focusObj(this)" onblur="blurPwd(this)"/></td>
    
  </tr>
  <tr>
    <td style="text-align:right">*重复密码：</td>
    <td><input type="password" class="textinput" name="password" placeholder="请再次输入密码"
    	id="repwd" onfocus="focusObj(this)" onblur="blurRePwd(this)"/></td>
    	 <td><font color="#747556">请注意两次密码是否一致</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="text-align:right">电话：</td>
    <td colspan="2"><input name="phone" type="text" class="textinput" placeholder="请输入固话号码"
    	id="tele"  ></td>
  </tr>
  <tr>
    <td style="text-align:right">*手机：</td>
    <td colspan="2"><input name="cellphone" type="text" class="textinput" placeholder="请输入手机号码"
    	id="phone" onfocus="focusObj(this)" onblur="blurNotNull(this)"/></td>
    	
  </tr>
  <tr>
    <td style="text-align:right">*发货地址：</td>
    <td colspan="2"><input name="address" type="text" class="textinput" style="width:350px" placeholder="请输入住址"
    	id="add" onfocus="focusObj(this)" onblur="blurNotNull(this)"/></td>
    </tr>
  <tr>
    <td style="text-align:right">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>


<h2>服务条款</h2>
<table width="120%" border="0" cellspacing="0">
  <tr>
    <td><textarea name="textarea" class="textarea">本网站及APP有权在必要时修改条款，将会在页面公布。
　</textarea></td>
  </tr>
</table>
<br />
<input align="center" type="submit" value="同意并注册" >
</td>
    </tr>
</table>
  </form>
</div>

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
   </form>
</div>


</body>
</html>

