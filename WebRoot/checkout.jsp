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
		<title>��ס�Ǽ�</title>

		<!-- Animate.css -->
		<link rel="stylesheet" href="css/animate.css">
		<!-- Themify Icons-->
		<link rel="stylesheet" href="css/bootstrap.css">
		<!-- Theme style  -->
		<link rel="stylesheet" href="css/style.css">
		<style type="text/css">
			body {
				overflow-x:hidden;
				overflow-y:hidden;
			}
		</style>
		<script>  
			setInterval("fun()", 1);
			function fun(){
				var date = new Date(); 
				var y = date.getFullYear();     
				var m = date.getMonth() + 1;  
				var d = date.getDate(); 
				var h = date.getHours();
        	    var minute = date.getMinutes();
        	    var second= date.getSeconds();     
       	  	    var minute = date.getMinutes();
        	    var s= date.getSeconds(); 
				if (m < 10) {
					m = "0" + m;
				}
				if (d < 10) {
					d = "0" + d;
				}
				if (h < 10) {
					h = "0" + h;
				}
				if (minute < 10) {
                minute = "0" + minute;
            	}
            	if (s < 10) {
                s = "0" +s;
            	}				
				document.getElementById('t').value= "��ǰ�˷�ʱ��:   "+y+" �� "+m+" �� "+d+" �� "+h+" ʱ "+minute+" �� "+s+" �� ";
			}
		</script>
    </head>

    <body>
       
		<div id="gtco-subscribe">
            <div>
                <h1  style="height: 70px; width: 80%; text-align: center;margin-top: -60px;margin-left: 10%">
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
							<button type="button" class="btn btn-default btn-block" style="margin-top: 20px; height: 40px;background-color: #303841">
								�û��˷�
							</button>
							<a href="menu.jsp">
								<button type="button" class="btn btn-white btn-block" style="margin-top: 20px; height: 40px;">
									���ز˵�
								</button>
							</a>
						</div>
					</div>
				</form>
			</div>
				<div class="row animate-box" style="margin-left:15% ;margin-right: -10%;margin-top: -150px;height:1800px ;">	
				    <form class="form-inline" method="post" action="querycino">
						<div class="row animate-box" >
		    				<div class="col-md-12" >
			    				<div class="col-md-4 col-sm-4">
				    				<div class="form-group">
					    				<label for="ciNo" class="sr-only">��ס��</label>
										<input type="text" style="width: 69%; float: left;" class="form-control"  placeholder="��ס��" name="ciNo">
										<button type="submit" style="width: 25.3%; float: right;" class="btn btn-default btn-block">��ѯ</button>
							    	</div>
		    					</div>
			    			</div>
						</div>
					</form>	
					<form class="form-inline" method="post" action="checkout">
						<div class="row animate-box" >
							<div class="col-md-12" >
								<div class="col-md-4 col-sm-4">
									<div class="form-group">
										<input type="text" class="form-control"  placeholder="����� "
										 name="roomNo" value="${querycino.roomNo}">
									</div>
								</div>
							</div>
						</div>
	    				<div class="row animate-box">
		    				<div class="col-md-12">
			    				<div class="col-md-4 col-sm-4">
				    				<div class="form-group">
					    				
						    			<input type="text" class="form-control" id="t" placeholder="�˷�ʱ��">
							    	</div>
		    					</div>
			    			</div>
				    	</div>
    					<div class="row animate-box">
	    					<div class="col-md-12">
		    					<div class="col-md-4 col-sm-4">
			    					<div class="form-group">
				    					
					    				<input type="text" class="form-control" id="actualDays" placeholder="��ס����" value="${day}">
						    		</div>
							    </div>
    						</div>
						</div>
						<div class="row animate-box">
							<div class="col-md-12">
								<div class="col-md-4 col-sm-4">
									<div class="form-group">
										
										<input type="text" class="form-control" id="oiName" placeholder="Ա������" >
									</div>
								</div>
							</div>
						</div>
						<div class="row animate-box">
							<div class="col-md-12">
								<div class="col-md-4 col-sm-4">
									<div class="form-group">
										
										<input type="text" id="roomPrice" class="form-control" placeholder="�������" value="${money}">
									</div>
								</div>
							</div>
						</div>
		    			<div class="row animate-box">
			    			<div class="col-md-12">
				    			<div class="col-md-14 col-sm-4">
					    			<button type="reset" class="btn btn-default btn-block">����</button>
						    	</div>

							<div class="col-md-13 col-sm-4">
								<button type="submit" class="btn btn-default btn-block"  onclick=" alert('�˷��ɹ���')">�˷�</button>
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
 
 
 