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
			<a class="navbar-brand" href="../main.jsp">JSP �Խ��� ������Ʈ</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="../main.jsp">����</a></li>
				<li><a href="../bbs.jsp">�Խ���</a></li>
				<li><a href="../fullcalendar/calendar.jsp">Ķ����</a></li>
				<li class="active"><a href="../chart/chart.jsp">��Ʈ</a></li>
			</ul>
		</div>
	</nav>
	
	<div class="container">
		<h1>chart �׽�Ʈ</h1>
		<div class="graphBox">
			<canvas id="barCanvas" width="384" height="210"></canvas>
		</div>
		
		<div class="graphBox">
			<canvas id="lineCanvas" width="384" height="210"></canvas>
		</div>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="../js/bootstrap.js"></script>
	<script type="text/javascript">
		const barChart = () => {
			const data = {
				labels : [ "09��", "10��", "11��", "12��", "13��", "14��", "15��",
						"16��", "17��", "18��", "19��", "20��", "21��", "22��" ],
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
			const ctx = document.getElementById("barCanvas").getContext("2d");
			const options = {};
			const barChart = new Chart(ctx).Bar(data, options);
		}
		
		const lineChart = () => {
			const data = {
				labels : [ "��", "ȭ", "��", "��", "��", "��", "��" ],
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
					},
					{
						label : "",
						fillColor : "rgba(15,97,205,0.2)",
						strokeColor : "rgba(15,97,205,1)",
						pointColor : "rgba(15,97,205,1)",
						pointStrokeColor : "#fff",
						pointHighlightFill : "#fff",
						pointHighlightStroke : "rgba(151,187,205,1)",
						data : [ 9, 3, 6, 5, 3, 8, 20 ]
					}
				]
			};
			const ctx = document.getElementById("lineCanvas").getContext("2d");
			const options = {};
			const lineChart = new Chart(ctx).Line(data, options);
		}
		
	$(document).ready(() => {
		barChart();
		lineChart();
	})
	</script>
</body>
</html>