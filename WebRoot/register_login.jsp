<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%--
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>���ӷ���</title>

	</head>

	<body>
		<form action="register" method="post">
			<p>
				����ţ�
				<input name="uiName"/>
			</p>
			<p>
				�������ͣ�
				<input name="uiPassword" />
			</p>
			<p>
				����۸�
				<input name="uiRealname" />
			</p>
			<p>
				����״̬��
				<input name="uiTelephone" />
			</p>
			<p>
				<input type="submit" value="��ӷ���" />
			</p>
		</form>
	</body>
</html>
 --%>
 
 <html>
	<head>
		<meta charset="utf-8">
		<title>�Ƶ����ϵͳ</title>

		<!-- Animate.css -->
		<link rel="stylesheet" href="css/animate.css">
		<!-- Themify Icons-->
		<link rel="stylesheet" href="css/bootstrap.css">
		<!-- Theme style  -->
		<link rel="stylesheet" href="css/style.css">
		<style type="text/css">
			body {
				overflow:scroll;
				overflow-x:hidden;
				overflow-y:hidden;
			}
		</style>
	</head>

	<body>
		
		<div id="gtco-header" class="gtco-cover" role="banner";">
			<div class="overlay"></div>
			<div class="gtco-container">
				<div class="row">
					<div class="col-md-12 col-md-offset-0 text-left">
						<div class="display-t">
							<div class="display-tc">
								<h1 class="animate-box" data-animate-effect="fadeInUp">��ӭʹ��<br>�ӱ���ó��ѧ���ù���ѧԺ�Ƶ����ϵͳ</h1>
								<h2 class="animate-box" data-animate-effect="fadeInUp">WELCOME  <em>to</em> HEBEI UNIVERSITY OF ECONOMICS HOTEL MANAGER SYSTEM</h2>
								<p class="animate-box" data-animate-effect="fadeInUp"><a href="#login" class="btn btn-white btn-lg btn-outline">��¼</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



		<div id="gtco-subscribe">
			<div class="gtco-container">	
				
				<div class="row animate-box">
					<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
						
						<div style="height: 100px; border-top: 200px;">
							<a name="login"><h6 style="color: #303841; height: 1px;">       </h6></a>
						</div>

						<div style="height: 100px; border-top: 200px;">
							<hr>
						</div>
						<div style="height: 100px;">
							<h2><a>��¼</a></h2>
							<p>��ӭʹ�þƵ����ϵͳ</p>
						</div>
					</div>
				</div>

				<form class="form-inline" action="login" method="post">

					<div class="row animate-box">
						<div class="col-md-12">
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
									<label for="username" class="sr-only">�ʺ�</label>
									<input type="text" class="form-control" id="name" placeholder="�˺�" name="uiName">
								</div>
							</div>
						</div>
					</div>

					<div class="row animate-box">
						<div class="col-md-12">
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
									<label for="password" class="sr-only">����</label>
									<input type="password" class="form-control" id="password" placeholder="����" name="uiPassword">
								</div>
							</div>
						</div>
					</div>

					<div class="row animate-box">
						<div class="col-md-12">
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
									<div  class="form-control">
										<label for="choice" class="sr-only">Ȩ��</label>
										<span style="float: left;; margin-left:20%; ">
											<input type="radio"  value="0" name="uiRole"> ������Ա
										</span>
											
										<span style="float:right;  margin-right:20%; ">
											<input type="radio"  value="1" name="uiRole"> ��ͨ�û�
										</span>

									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row animate-box">
						<div class="col-md-12">
							<div class="col-md-14 col-sm-4">
									<a href="#register" style="color: #ffffff;">
								<button type="submit" class="btn btn-default btn-block"  >����</button></a>
							</div>

							<div class="col-md-13 col-sm-4">
								<a href="#register" style="color: #ffffff;">
									<button type="button" class="btn btn-default btn-block" href="#register">
										ע��
									</button>
								</a>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>


		
		<div id="gtco-subscribe">
			<div class="gtco-container">
					<div class="row animate-box">
							<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
								
								<div style="height: 20px; border-top: 200px;">
									<h6 style="color: #303841; height: 1px;"><a name="register"></a></h6>
								</div>
		
								<div style="height: 10px; border-top: 200px;">
									<hr><a name="register"></a>
								</div>
								<div style="height: 100px;">
									<h2><a>ע��</a></h2>
									<p>��ӭʹ�þƵ����ϵͳ</p>
								</div>
							</div>
						</div>
					
				<form class="form-inline" action="register" method="post">
					
					<div class="row animate-box">
						<div class="col-md-12">

							<div class="col-md-4 col-sm-4">
								<div class="form-group">
									<label for="username" class="sr-only">�ʺ�</label>
									<input type="text" class="form-control" id="name" placeholder="�˺�" name="uiName">
								</div>
							</div>
						</div>
					</div>
					<div class="row animate-box">
						<div class="col-md-12">
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
									<label for="password" class="sr-only">����</label>
									<input type="password" class="form-control" id="password" placeholder="����" name="uiPassword">
								</div>
							</div>
						</div>
					</div>
					<!-- 
					<div class="row animate-box">
						<div class="col-md-12">
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
									<label for="confirmword" class="sr-only">ȷ������</label>
									<input type="password" class="form-control" id="password" placeholder="ȷ������">
								</div>
							</div>
						</div>
					</div>
					 -->
					<div class="row animate-box">
						<div class="col-md-12">
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
									<label for="realname" class="sr-only">��ʵ����</label>
									<input type="text" class="form-control" id="name" placeholder="��ʵ����" name="uiRealname">
								</div>
							</div>
						</div>
					</div>
					<div class="row animate-box">
						<div class="col-md-12">
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
									<label for="telphone" class="sr-only">�ֻ�����</label>
									<input type="text" class="form-control" id="name" placeholder="�ֻ�����" name="uiTelephone">
								</div>
							</div>
						</div>
					</div>
					<div class="row animate-box">
						<div class="col-md-12">
							<div class="col-md-14 col-sm-4">
								<a href="#login"><button type="button" class="btn btn-default btn-block">��¼</button></a>
							</div>

							<div class="col-md-13 col-sm-4">
								<button type="submit" class="btn btn-default btn-block"  onclick=" alert('ע��ɹ���')">ע��</button>
							</div>
						</div>

						
					</div>
				</form>
			</div>

		</div>	
	
		<!-- jQuery -->
		<script src="js/jquery.min.js"></script>
		<!-- jQuery Easing -->
		<script src="js/jquery.easing.1.3.js"></script>
		<!-- Bootstrap -->
		<script src="js/bootstrap.min.js"></script>
		<!-- Waypoints -->
		<script src="js/jquery.waypoints.min.js"></script>
		<!-- Carousel -->
		<script src="js/owl.carousel.min.js"></script>
		<!-- countTo -->
		<script src="js/jquery.countTo.js"></script>
		<!-- Magnific Popup -->
		<script src="js/jquery.magnific-popup.min.js"></script>
		<script src="js/magnific-popup-options.js"></script>
		<!-- Main -->
		<script src="js/main.js"></script>
		<!-- Modernizr JS -->
		<script src="js/modernizr-2.6.2.min.js"></script>
	</body>
</html>

 
 
 
 
 