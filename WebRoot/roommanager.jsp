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
	<title>房间信息</title>

	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">
	<style type="text/css">
		.occupy:hover {
			background-color: #fff;
			color: #000000;

		}

		.leisure:hover {
			background-color: #fff;
			color: #000000;

		}

		.occupy {
			/* 占用*/
			width: 120px;
			height: 120px;
			border: 4px solid #fff;
			border-radius: 10px;
			margin: 10px;
			background-color: #17B794;
			color: #ffffff;
			line-height: 15px;
			padding: 15px;
		}

		.leisure {
			/* 空闲*/

			width: 120px;
			height: 120px;
			border: 4px solid #fff;
			border-radius: 10px;
			margin: 10px;
			background-color: #303841;
			color: #ffffff;
			line-height: 15px;
			padding: 15px;
		}

		.maintain {
			/* 维护 */
			width: 120px;
			height: 120px;
			border: 4px solid #fff;
			border-radius: 10px;
			margin: 10px;
			background-color: #aaaaaa;
			color: #ffffff;
			line-height: 15px;
			padding: 15px;
		}
	</style>

</head>

<body style="backgroung-color:#303841">
	<div id="gtco-subscribe">
		<div>
			<h1 style="height: 70px; width: 80%; text-align: center;margin-top: -60px;margin-left: 10%;">
				<p style="color:#ffffff">河北经贸大学经济管理学院酒店管理系统</p>
				<hr>
			</h1>
		</div>


		<div class="gtco-container">
			<div id="gtco-features-3" style="width: 150px; height:0px;margin-top:150px;margin-left: 5%;z-index: 3;">
				<form class="form-inline" action="roommanager" method="post">
					<div class="gtco-flex">
						<div class="feature-inner">
							<button type="button" class="btn btn-default btn-block" style="margin-bottom: 20px; height: 40px;">
								查找房间
							</button>
							<input type="text" class="form-control" id="roomNo" style=" height: 45px;" placeholder="房间号">
							<button type="submit" class="btn btn-white btn-block" style="margin-top: 20px; height: 40px;">
								房间列表
							</button>
							<a href="checkin.jsp">
								<button type="button" class="btn btn-white btn-block" style="margin-top: 20px; height: 40px;">
									用户入住
								</button>
							</a>
							<a href="checkout.jsp">
								<button type="button" class="btn btn-white btn-block" style="margin-top: 20px; height: 40px;">
									用户退房
								</button>
							</a>
							<a href="menu.jsp">
								<button type="button" class="btn btn-white btn-block" style="margin-top: 20px; height: 40px;">
									返回菜单
								</button>
							</a>
						</div>
					</div>
				</form>
			</div>
			<div style=" margin-left:25% ;width: 750px; margin-right: -10%;margin-top: -150px;height:700px ;">
				<c:forEach var="room" items="${rooms}">
					<c:if test="${room.roomStatus eq '空闲'}">
						<button class="leisure" type="button">
							<p>${room.roomNo }</p>
							<p>用户姓名</p>
							<p>${room.roomStatus}</p>
						</button>
					</c:if>
					<c:if test="${room.roomStatus eq '占用'}">
						<button class="occupy" type="button">
							<p>${room.roomNo }</p>
							<p>用户姓名</p>
							<p>${room.roomStatus}</p>
						</button>
					</c:if>
					<c:if test="${room.roomStatus eq '维修'}">
						
						<button class="maintain" type="button">
							<p>${room.roomNo }</p>
							<p>用户姓名</p>
							<p>${room.roomStatus}</p>
						</button>
					</c:if>
					
					<c:if test="${room.roomStatus eq '清扫'}">
						
						<button class="maintain" type="button">
							<p>${room.roomNo }</p>
							<p>用户姓名</p>
							<p>${room.roomStatus}</p>
						</button>
					</c:if>
				</c:forEach>
	




			</div>
		</div>

		<!-- jQuery -->
		<script src="js/jquery.min.js"></script>
		<!-- Waypoints -->
		<script src="js/jquery.waypoints.min.js"></script>
		<!-- Main -->
		<script src="js/main.js"></script>
		<!-- Modernizr JS -->
		<script src="js/modernizr-2.6.2.min.js"></script>
</body>

</html>
 
 