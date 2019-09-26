<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
	<head>
	<meta charset="utf-8">
	<title>酒店管理系统</title>

	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- FOR IE9 below -->
    <style type="text/css">
        body {
            background-color:#303841;
        }
        .header{
            height: 80px;
            width: 96%;
            margin-top: 10px;
            margin-left:2%; 
            background-color:#17B794;
            position: fixed;
			border-radius: 8px;
        }
        .qwe{
            background-color:#17B794;
            color: #ffffff;
            border-radius: 4px;
            margin-left: 5%;
            margin-top: 5px; 
            width: 10%;
            height: 30px;
            line-height: 30px;
            float: left;
            text-align: center;
			border: 2px solid #fff;
        }
        .qwer{
            color: #303841;
            float: left;
            width: 10%;
            margin-left:5%; 
            line-height: 40px;
        }
        .project{
            width: 80%;
            height: 40px;
            margin-left: 10%;
            margin-top: 10px;
            background-color:#17B794;
            position: fixed;
            border-color: red;
			border-radius: 8px;
        }
        .messege1{
            width: 100%;
            height: 40px;
            margin-left: 0%;
            margin-top: 10px;
            background-color:#aaaaaa;
			border-radius: 8px;
        }
        .messege2{
            width: 100%;
            height: 40px;
            margin-left: 0%;
            margin-top: 10px;
            background-color:#eeeeee;
            border: 8px; 
			border-radius: 8px;
        }
        .mys{
        	/* 维护 */
			width: 10%;
			height: 40px;
			border: 2px solid #fff;
			border-radius: 4px;
            margin-left: 5%;
            margin-top: 18px;
            background-color:#303841 ;
            float: left;
			color: #aaaaaa;
			line-height: 40px;
			padding: 0px;
        }
        .mys:hover{
            background-color: #ffffff;
            color: #303841;
        }
    </style>
	</head>
	<body>
        <div class="header">
			<form class="form-inline" action="queryAllStaff" method="post">		
				<input type="text" class="form-control" id="oiID" style="background-color: #303841  ; border-color: #ffffff; height: 40px;float: left;width: 25%;margin-top: 18px;margin-left: 15% " placeholder="员工编号">
                    <button class="mys" type="submit">
                        <p>查找员工</p>
                    </button>
                    <a href="register_login.jsp#reigter">
	                    <button class="mys" type="button">
	                        <p>增加员工</p>
	                    </button>
                    </a>
                    <a href="menu.jsp">
                        <button class="mys" type="button">
                            <p>返回菜单</p>
                        </button>
                    </a>        
    		</form>
    	</div>
        <div style=" height: 90px;">
        </div>
        <div class="project" >
            <div class="qwe"style="margin-left: 15%;"> 员工账号</div> 
            <div class="qwe"> 员工姓名</div> 
            <div class="qwe"> 员工电话 </div>
        </div>
        <div style=" height: 50px;">
        </div>
        
          <div style="width:80%; margin-left:10%;height:1000px;margin-top: 10px; ">
            
            <c:forEach var="staff" items="${allStaff}">
				<div class="messege1">
                <div class="qwer" style="margin-left: 17%;"> ${staff.uiID}</div> 
                <div class="qwer">${staff.uiRealname}</div> 
                <div class="qwer">${staff.uiTelephone} </div>
                <button class="mys" style="margin-top:0px;background-color: #aaaaaa;color: #eeeeee"> 修改 </button>
                <button class="mys" style="margin-top:0px;background-color: #aaaaaa;color: #eeeeee;"> 删除 </button>
            </div>
			</c:forEach>
            
        </div>
        
        

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<!-- Main -->
    <script src="js/main.js"></script>
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>

	</body>
</html>
 
 