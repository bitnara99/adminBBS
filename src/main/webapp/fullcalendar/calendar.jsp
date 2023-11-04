<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@page import="java.util.List"%> --%>
<%-- <%@page import="com.mycompany.myapp.calendar.model.vo.Calendar"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판</title>
<script
	src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.9/index.global.min.js'></script>
<style type="text/css">
html, body {
	margin: 0;
	padding: 0;
	font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	font-size: 14px;
}

#calendar {
	max-width: 1100px;
	margin: 40px auto;
}
</style>
</head>
<body>

	<div id='calendar'></div>
	
	<button type="button" onclick="test();">테스트</button>
	<button type="button" onclick="showAllEvents();">모든 이벤트보기</button>

	<script>
	var calendar;
		document.addEventListener('DOMContentLoaded', function() {
			var calendarEl = document.getElementById('calendar');

			calendar = new FullCalendar.Calendar(calendarEl, {
				initialView : 'dayGridMonth',
				initialDate : '2023-09-07',
				headerToolbar : {
					left : 'prev,next today',
					center : 'title',
					right : 'dayGridMonth,timeGridWeek,timeGridDay'
				},
				editable: true,
				businessHours : [ 
					{
						daysOfWeek : [ 1, 2, 3 ], // Monday, Tuesday, Wednesday
						startTime : '08:00', // 8am
						endTime : '18:00' // 6pm
					},
					{
						daysOfWeek: [ 4, 5 ], // Thursday, Friday
						startTime: '10:00', // 10am
						endTime: '16:00' // 4pm
					}
				],
				events : [ {
					title : 'All Day Event',
					start : '2023-09-01'
				}, {
					id: 'a',
					title : 'Long Event',
					start : '2023-09-07',
					end : '2023-09-10'
				}, {
					groupId : '999',
					title : 'Repeating Event',
					start : '2023-09-09T16:00:00'
				}, {
					groupId : '999',
					title : 'Repeating Event',
					start : '2023-09-16T16:00:00'
				}, {
					title : 'Conference',
					start : '2023-09-11',
					end : '2023-09-13'
				}, {
					title : 'Meeting',
					start : '2023-09-12T10:30:00',
					end : '2023-09-12T12:30:00'
				}, {
					title : 'Lunch',
					start : '2023-09-12T12:00:00'
				}, {
					title : 'Meeting',
					start : '2023-09-12T14:30:00'
				}, {
					title : 'Birthday Party',
					start : '2023-09-13T07:00:00'
				}, {
					title : 'Click for Google',
					url : 'https://google.com/',
					start : '2023-09-28'
				} ]
			});
			calendar.render();
		});
		

		function test() {
			var event = calendar.getEventById('a');
			console.log(event.title);
		}
		
		function showAllEvents() {
			console.log(calendar.getEvents())
			console.log(calendar.getEvents()[3].title)
		}
	</script>
</body>
</html>