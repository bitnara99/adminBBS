<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.min.js"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/custom.css">
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="../main.jsp">JSP 게시판 웹사이트</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="../main.jsp">메인</a></li>
				<li><a href="../bbs.jsp">게시판</a></li>
				<li><a href="../fullcalendar/calendar.jsp">캘린더</a></li>
				<li class="active"><a href="../chart/chart.jsp">차트</a></li>
			</ul>
		</div>
	</nav>

	<div class="container">
		<h1>chart 테스트</h1>
		<div class="graphBox">
			<canvas id="bar-chart" width=250 height="250"></canvas>
		</div>

		<div class="graphBox">
			<canvas id="line-chart" width="250" height="250"></canvas>
		</div>
		
		<div class="graphBox">
			<canvas id="pie-chart" width="250" height="250"></canvas>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="../js/bootstrap.js"></script>
	<script type="text/javascript">
		new Chart(document.getElementById("bar-chart"), {
			type: 'bar',
			data: {
				labels: ["Africa", "Asia", "Europe", "Latin America", "North America"],
				datasets: [{
					label: "Population (millions)",
					backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
					data: [2478,5267,734,784,433]
				}]
			},
			options: {
				legend: { display: false },
				title: {
					display: true,
					text: 'Predicted world population (millions) in 2050'
				}
			}
		});
		
		new Chart(document.getElementById("line-chart"), {
			type: 'line',
			data: {
				labels: [1500,1600,1700,1750,1800,1850,1900,1950,1999,2050],
				datasets: [{
						data: [86,114,106,106,107,111,133,221,783,2478],
						label: "Africa",
						borderColor: "#3e95cd",
						fill: false
					}, { 
						data: [282,350,411,502,635,809,947,1402,3700,5267],
						label: "Asia",
						borderColor: "#8e5ea2",
						fill: false
					}, { 
						data: [168,170,178,190,203,276,408,547,675,734],
						label: "Europe",
						borderColor: "#3cba9f",
						fill: false
					}, { 
						data: [40,20,10,16,24,38,74,167,508,784],
						label: "Latin America",
						borderColor: "#e8c3b9",
						fill: false
					}, { 
						data: [6,3,2,2,7,26,82,172,312,433],
						label: "North America",
						borderColor: "#c45850",
						fill: false
					}]
			},
			options: {
				title: {
					display: true,
					text: 'World population per region (in millions)'
				}
			}
		});

		new Chart(document.getElementById("pie-chart"), {
			type: 'pie',
			data: {
				labels: ["Africa", "Asia", "Europe", "Latin America", "North America"],
				datasets: [{
					label: "Population (millions)",
					backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
					data: [2478,5267,734,784,433]
				}]
			},
			options: {
				title: {
					display: true,
					text: 'Predicted world population (millions) in 2050'
				}
			}
		});
	</script>
</body>
</html>