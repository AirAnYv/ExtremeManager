<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
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
            overflow:scroll;
            overflow-x:hidden;
            overflow-y:hidden;
        }
    </style>
	</head>
	<body>
		
	<div class="gtco-loader"></div>
	
	<div id="page">

        <div id="gtco-header" class="gtco-cover" style="height: 500px">
            <div class="overlay"></div>
            <div class="gtco-container">
                <div >
                    <div class="display-tc" style="height: 300px;width: 60%;margin-left:20%">
                        <h1 class="animate-box" data-animate-effect="fadeInUp" style="width: 100%; text-align: center;">河北经贸大学经济管理学院<br>酒店管理系统</h1>
                    </div>
                </div>
            </div>
        </div>

        <div id="gtco-features-3">
            <div class="gtco-container1">
                <div class="gtco-flex">
                    <span class="feature feature-1 animate-box" data-animate-effect="fadeInUp" style="width:20%; height: 240px; float: left; margin-left:17.5%; ">
                        <div class="feature-inner">
                            <h3 style="margin-top: 20px;">住户管理</h3>
                            <p>  </p>
                            <p><a href="checkin.jsp" class="btn btn-white btn-outline" style=" margin-top:60px">进入</a></p>
                        </div>
                    </span> 
                    <span class="feature feature-2 animate-box" data-animate-effect="fadeInUp" style="height: 260px; width:25%; ">
                        <div class="feature-inner">
                            <h3 style="margin-top: 20px;">员工管理</h3>
                                <div style="height: 100px;">
                                    
                                    <p style="line-height:100px; text-align:center;"> 仅管理员可用</p>
                                </div>
                            <p><a href="staffmanager.jsp" class="btn btn-white btn-outline" style=" margin-top:60px">进入</a></p>   
                        </div>
                    </span>
                    <span class="feature feature-3 animate-box" data-animate-effect="fadeInUp" style="height: 240px; width:20%;">
                        <div class="feature-inner">
                            <h3 style="margin-top: 20px;">房间管理</h3>
                            <p>  </p>
                            <p><a href="roommanager.jsp" class="btn btn-white btn-outline" style=" margin-top:60px">进入</a></p>
                            	
                        </div>
                    </span>
                </div>
            </div>
        </div>
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

 
 
 
 
 