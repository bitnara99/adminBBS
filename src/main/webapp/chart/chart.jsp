<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/custom.css">
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="../main.jsp">JSP 게시판 웹사이트</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="../main.jsp">메인</a></li>
				<li><a href="../bbs.jsp">게시판</a></li>
				<li><a href="../fullcalendar/calendar.jsp">캘린더</a></li>
				<li class="active"><a href="../chart/chart.jsp">차트</a></li>
			</ul>
		</div>
	</nav>
	
	<h1>chart 테스트</h1>
	<div class="graphBox">
		<canvas id="barCanvas" width="384" height="210"></canvas>
	</div>
	
	<div class="graphBox">
		<canvas id="lineCanvas" width="384" height="210"></canvas>
	</div>
	
	<script type="text/javascript">
		function barChart() {
			var data = {
				labels : [ "09시", "10시", "11시", "12시", "13시", "14시", "15시",
						"16시", "17시", "18시", "19시", "20시", "21시", "22시" ],
				datasets : [ {
					label : "",
					fillColor : "rgba(150,200,250,0.5)",
					strokeColor : "rgba(150,200,250,0.8)",
					highlightFill : "rgba(150,200,250,0.75)",
					highlightStroke : "rgba(150,200,250,1)",
					data : [ 65, 59, 80, 81, 56, 55, 30, 100, 120, 50, 11, 40,
							70, 120 ]
				} ]
			};
			var ctx = document.getElementById("barCanvas").getContext("2d");
			var options = {};
			var barChart = new Chart(ctx).Bar(data, options);
		}
		
		function lineChart() {
			var data = {
				labels : [ "월", "화", "수", "목", "금", "토", "일" ],
				datasets : [
					{
						label : "",
						fillColor : "rgba(220,220,220,0.2)",
						strokeColor : "rgba(220,220,220,1)",
						pointColor : "rgba(220,220,220,1)",
						pointStrokeColor : "#fff",
						pointHighlightFill : "#fff",
						pointHighlightStroke : "rgba(220,220,220,1)",
						data : [ 2, 3, 5, 7, 11, 13, 17 ]
					},
					{
						label : "",
						fillColor : "rgba(151,187,205,0.2)",
						strokeColor : "rgba(151,187,205,1)",
						pointColor : "rgba(151,187,205,1)",
						pointStrokeColor : "#fff",
						pointHighlightFill : "#fff",
						pointHighlightStroke : "rgba(151,187,205,1)",
						data : [ 0, 1, 1, 2, 3, 5, 8 ]
					}
				]
			};
			var ctx = document.getElementById("lineCanvas").getContext("2d");
			var options = {};
			var lineChart = new Chart(ctx).Line(data, options);
		}
		
		barChart();
		lineChart();
	</script>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="../js/bootstrap.js"></script>
</body>
</html>