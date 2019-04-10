<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>login</title>
<style type="text/css">
*{
	margin: 0;
	padding: 0;
}
#wrap {
	height: 719px;
	width: 100;
	background-repeat: no-repeat;
	background-position: center center;
	position: relative;
}
#head {
	height: 120px;
	width: 100;
	background-color: #66CCCC;
	text-align: center;
	position: relative;
}
#foot {
	width: 100;
	height: 126px;
	background-color: #CC9933;
	position: relative;
}
#wrap .logGet {
	height: 408px;
	width: 368px;  
	position: absolute;
	background-color: #FFFFFF;
	top: 20%;
	right: 15%;
}
#zc{
	width: 40%;
	height: 40px;
	background-color: #ee7700;
	border: none;
	color: white;
	font-size: 16px;
    padding-left: 10px;
}

 #dl {
    width: 40%;
    height: 40px;
    background-color: #ee7700;
    border: none;
    color: white;
    font-size: 16px;

     padding-right:30px
}


.logGet .logD.logDtip .p1 {
	display: inline-block;
	font-size: 28px;
	margin-top: 30px;
	width: 86%;

}
#wrap .logGet .logD.logDtip {
	width: 86%;
	border-bottom: 1px solid #ee7700;
	margin-bottom: 30px;
	margin-top: 0px;
	margin-right: auto;
	margin-left: auto;
}
.logGet .lgD img {
	position: absolute;
	top: 12px;
	left: 8px;
}
.logGet .lgD input {
	width: 90%;
	height: 42px;
	text-indent: 2.5rem;
    border:1px solid #000
}


.wrap{


    border-top:1px solid #000;
    border-bottom:1px solid #000


}


#wrap .logGet .lgD {
	width: 86%;
	position: relative;
	margin-bottom: 30px;
	margin-top: 30px;
	margin-right: auto;
	margin-left: auto;
}
#wrap .logGet  .logZ {
	width: 86%;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}
.logC{

    margin-left: 30px;

}

.logZ {

    width: 30%;
	height: 20px;
	background-color: #ee7700;
	border: none;
	color: white;
	font-size: 16px;

}
 
 
.title {
	font-family: "宋体";
	color: #FFFFFF;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);  /* 使用css3的transform来实现 */
	font-size: 36px;
	height: 40px;
	width: 30%;
}
 
.copyright {
	font-family: "宋体";
	color: #FFFFFF;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);  /* 使用css3的transform来实现 */
	height: 60px;
	width: 40%;
	text-align:center;
}
	
 
#foot .copyright .img {
	width: 100%;
	height: 24px;
	position: relative;
}
.copyright .img .icon {
	display: inline-block;
	width: 24px;
	height: 24px;
	margin-left: 22px;
	vertical-align: middle;
	background-repeat: no-repeat;
	vertical-align: middle;
	margin-right: 5px;
}
	
.copyright .img .icon1 {
	display: inline-block;
	width: 24px;
	height: 24px;
	margin-left: 22px;
	vertical-align: middle;
	background-repeat: no-repeat;
	vertical-align: middle;
	margin-right: 5px;
}
.copyright .img .icon2 {
	display: inline-block;
	width: 24px;
	height: 24px;
	margin-left: 22px;
	vertical-align: middle;
	background-repeat: no-repeat;
	vertical-align: middle;
	margin-right: 5px;
}
#foot .copyright p {
	height: 24px;
	width: 100%;
}
</style>
</head>
 
<body>
<div class="header" id="head">
  <div class="title">教务管理系统</div>
	
</div>
	
<div class="wrap" id="wrap">
	<div class="logGet">
			<!-- 头部提示信息 -->
			<div class="logD logDtip">
				<p class="p1">用户登录</p>
			</div>
			<!-- 输入框 -->
			<div class="lgD">
				<img src="/images/logName.png" width="20" height="20" alt=""/>
				<input type="text"
					placeholder="输入用户名" />
			</div>
			<div class="lgD">
				<img src="/images/logPwd.png" width="20" height="20" alt=""/>
				<input type="password"
					placeholder="输入用户密码" />
			</div>
			<div class="logC">
				<a href="/login.do" target="_self"><button id="dl">登 录</button></a>
                <a href="/zlogin.do" target="_self"><button id="zc">注册</button></a>
			</div>
				
		</div>
</div>
	
<div class="footer" id="foot">
  <div class="copyright">
   
    <div class="img">
	
	</div>
	
	<div class="img">
	
	</div>
	  
	<div class="img">
	
	</div>
 
 
  </div>
	
</div>
	
	
</body>
</html>

