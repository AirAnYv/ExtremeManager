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
	<title>������Ϣ</title>

	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">
	<style type="text/css">
		body {
			overflow-x: hidden;
			overflow-y: hidden;
		}
	</style>
</head>

<body>
	<div id="gtco-subscribe">
		<div>
			<h1 style="height: 70px; width: 80%; text-align: center;margin-top: -60px;margin-left: 10%">
				<p style="color:#ffffff">�ӱ���ó��ѧ���ù���ѧԺ�Ƶ����ϵͳ</p>
				<hr>
			</h1>
		</div>


		<div class="gtco-container">
			<div id="gtco-features-3" style="width: 150px; height:0px;margin-top:150px;margin-left: 5%;z-index: 3;">
				<form class="form-inline">
					<div class="gtco-flex">
						<div class="feature-inner">
							<a href="roommanager.jsp">
								<button type="button" class="btn btn-white btn-block" style="margin-bottom: 20px; height: 40px;">
									�����б�
								</button>
							</a>
							<input type="text" class="form-control" id="roomNo" style=" height: 45px;" placeholder="�����">
							<button type="submit" class="btn btn-white btn-block" style="margin-top: 20px; height: 40px;">
								���ҷ���
							</button>
							<a href="checkin.jsp">
								<button type="button" class="btn btn-white btn-block" style="margin-top: 20px; height: 40px;">
									�û���ס
								</button>
							</a>
							<a href="checkout.jsp">
								<button type="button" class="btn btn-white btn-block" style="margin-top: 20px; height: 40px;">
									�û��˷�
								</button>
							</a>
							<a href="menu.jsp">
								<button type="button" class="btn btn-white btn-block" style="margin-top: 20px; height: 40px;">
									���ز˵�
								</button>
							</a>
						</div>
					</div>
				</form>
			</div>
			<div class="row animate-box" style=" margin-left:15% ;margin-right: -10%;margin-top: -150px;height:1800px ;">
				<form class="form-inline">
					<div class="row animate-box">
						<div class="col-md-12">
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
									<label for="roomNo" class="sr-only">�����</label>
									<input type="text" class="form-control" id="roomNo" placeholder="�����">
								</div>
							</div>
						</div>
					</div>
					<div class="row animate-box">
						<div class="col-md-12">
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
									<label for="name" class="sr-only">��������</label>
									<input type="text" class="form-control" id="name" placeholder="��������">
								</div>
							</div>
						</div>
					</div>
					<div class="row animate-box">
						<div class="col-md-12">
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
									<label for="credentialsNo" id="credentialsNo" class="sr-only">֤������</label>
									<input type="text" class="form-control" id="credentialsNo" placeholder="֤������">
								</div>
							</div>
						</div>
					</div>
					<div class="row animate-box">
						<div class="col-md-12">
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
									<label for="ciDateTime" class="sr-only">��סʱ��</label>
									<input type="text" class="form-control" id="t" placeholder="��סʱ��">
								</div>
							</div>
						</div>
					</div>
					<div class="row animate-box">
						<div class="col-md-12">
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
									<label for="ciMark" class="sr-only">��ע</label>
									<textarea type="text" style="height:180px" class="form-control" id="coMark">��ע</textarea>
								</div>
							</div>
						</div>
					</div>
					<div class="row animate-box">
						<div class="col-md-12">
							<div class="col-md-14 col-sm-4">
								<input type="reset" class="btn btn-default btn-block" id="ciMark" placeholder="����">
							</div>

							<div class="col-md-13 col-sm-4">
								<button type="submit" class="btn btn-default btn-block" onclick=" alert('�޸ĳɹ���')">�޸�</button>
							</div>
						</div>
					</div>
				</form>
			</div>
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
 
 
 