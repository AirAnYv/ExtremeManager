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
		<title>入住登记</title>

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
				document.getElementById('t').value= "当前退房时间:   "+y+" 年 "+m+" 月 "+d+" 日 "+h+" 时 "+minute+" 分 "+s+" 秒 ";
			}
		</script>
    </head>

    <body>
       
		<div id="gtco-subscribe">
            <div>
                <h1  style="height: 70px; width: 80%; text-align: center;margin-top: -60px;margin-left: 10%">
                    <p style="color:#ffffff">河北经贸大学经济管理学院酒店管理系统</p>
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
									房间列表
								</button>
							</a>
							<input type="text" class="form-control" id="roomNo" style=" height: 45px;" placeholder="房间号">
							<button type="submit" class="btn btn-white btn-block" style="margin-top: 20px; height: 40px;">
								查找房间
							</button>
							<a href="checkin.jsp">
								<button type="button" class="btn btn-white btn-block" style="margin-top: 20px; height: 40px;">
									用户入住
								</button>
							</a>
							<button type="button" class="btn btn-default btn-block" style="margin-top: 20px; height: 40px;background-color: #303841">
								用户退房
							</button>
							<a href="menu.jsp">
								<button type="button" class="btn btn-white btn-block" style="margin-top: 20px; height: 40px;">
									返回菜单
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
					    				<label for="ciNo" class="sr-only">入住号</label>
										<input type="text" style="width: 69%; float: left;" class="form-control"  placeholder="入住号" name="ciNo">
										<button type="submit" style="width: 25.3%; float: right;" class="btn btn-default btn-block">查询</button>
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
										<input type="text" class="form-control"  placeholder="房间号 "
										 name="roomNo" value="${querycino.roomNo}">
									</div>
								</div>
							</div>
						</div>
	    				<div class="row animate-box">
		    				<div class="col-md-12">
			    				<div class="col-md-4 col-sm-4">
				    				<div class="form-group">
					    				
						    			<input type="text" class="form-control" id="t" placeholder="退房时间">
							    	</div>
		    					</div>
			    			</div>
				    	</div>
    					<div class="row animate-box">
	    					<div class="col-md-12">
		    					<div class="col-md-4 col-sm-4">
			    					<div class="form-group">
				    					
					    				<input type="text" class="form-control" id="actualDays" placeholder="入住天数" value="${day}">
						    		</div>
							    </div>
    						</div>
						</div>
						<div class="row animate-box">
							<div class="col-md-12">
								<div class="col-md-4 col-sm-4">
									<div class="form-group">
										
										<input type="text" class="form-control" id="oiName" placeholder="员工姓名" >
									</div>
								</div>
							</div>
						</div>
						<div class="row animate-box">
							<div class="col-md-12">
								<div class="col-md-4 col-sm-4">
									<div class="form-group">
										
										<input type="text" id="roomPrice" class="form-control" placeholder="结算费用" value="${money}">
									</div>
								</div>
							</div>
						</div>
		    			<div class="row animate-box">
			    			<div class="col-md-12">
				    			<div class="col-md-14 col-sm-4">
					    			<button type="reset" class="btn btn-default btn-block">重置</button>
						    	</div>

							<div class="col-md-13 col-sm-4">
								<button type="submit" class="btn btn-default btn-block"  onclick=" alert('退房成功！')">退房</button>
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
 
 
 