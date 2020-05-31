<%@page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Lumino</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/font-awesome.min.css" rel="stylesheet">
<link href="resources/css/datepicker3.css" rel="stylesheet">
<link href="resources/css/styles.css" rel="stylesheet">

<link rel='stylesheet' type='text/css'
	href='resources/css/fullcalendar.css' />
<script type='text/javascript' src='resources/js/jquery/jquery.js'></script>
<script type='text/javascript'
	src='resources/js/jquery/jquery-ui-custom.js'></script>
<script type='text/javascript' src='resources/js/fullcalendar.min.js'></script>
<!--Custom Font-->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">




<script type='text/javascript'>
	$(document).ready(
			function() {

				/* initialize the external events
				-----------------------------------------------------------------*/

				$('#external-events div.external-event').each(function() {

					// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
					// it doesn't need to have a start or end
					var eventObject = {
						title : $.trim($(this).text())
					// use the element's text as the event title
					};

					// store the Event Object in the DOM element so we can get to it later
					$(this).data('eventObject', eventObject);

					// make the event draggable using jQuery UI
					$(this).draggable({
						zIndex : 999,
						revert : true, // will cause the event to go back to its
						revertDuration : 0
					//  original position after the drag
					});
				});
				/* initialize the calendar
				-----------------------------------------------------------------*/

				$('#calendar').fullCalendar(
						{
							header : {
								left : 'prev,next today',
								center : 'title',
								right : 'month,agendaWeek,agendaDay'
							},
							editable : true,
							droppable : true, // this allows things to be dropped onto the calendar !!!
							drop : function(date, allDay) { // this function is called when something is dropped

								// retrieve the dropped element's stored Event Object
								var originalEventObject = $(this).data(
										'eventObject');

								// we need to copy it, so that multiple events don't have a reference to the same object
								var copiedEventObject = $.extend({},
										originalEventObject);

								// assign it the date that was reported
								copiedEventObject.start = date;
								copiedEventObject.allDay = allDay;

								// render the event on the calendar
								// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
								$('#calendar').fullCalendar('renderEvent',
										copiedEventObject, true);

								// is the "remove after drop" checkbox checked?
								if ($('#drop-remove').is(':checked')) {
									// if so, remove the element from the "Draggable Events" list
									$(this).remove();
								}
							}
						});
			});
</script>



<style type='text/css'>
body {
/* 	margin-top: 40px; */
/* 	text-align: left; */
/* 	font-size: 14px; */
/* 	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif; */
}

#wrap {
	width: 1100px;
	margin: 0 auto;
}

#external-events {
	float: left;
	width: 150px;
	padding: 0 10px;
	border: 1px solid #ccc;
	background: #eee;
	text-align: left;
}

#external-events h4 {
	font-size: 16px;
	margin-top: 0;
	padding-top: 1em;
}

.external-event { /* try to mimick the look of a real event */
	margin: 10px 0;
	padding: 2px 4px;
	background: #3366CC;
	color: #fff;
	font-size: .85em;
	cursor: pointer;
}

#external-events p {
	margin: 1.5em 0;
	font-size: 11px;
	color: #666;
}

#external-events p input {
	margin: 0;
	vertical-align: middle;
}

#calendar {
	float: right;
	width: 900px;
}
</style>







</head>
<body>
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><span>Lumino</span>Admin</a>
				<ul class="nav navbar-top-links navbar-right">
					<li class="dropdown"><a class="dropdown-toggle count-info"
						data-toggle="dropdown" href="#"> <em class="fa fa-envelope"></em><span
							class="label label-danger">15</span>
					</a>
						<ul class="dropdown-menu dropdown-messages">
							<li>
								<div class="dropdown-messages-box">
									<a href="profile.html" class="pull-left"> <img alt="image"
										class="img-circle" src="http://placehold.it/40/30a5ff/fff">
									</a>
									<div class="message-body">
										<small class="pull-right">3 mins ago</small> <a href="#"><strong>John
												Doe</strong> commented on <strong>your photo</strong>.</a> <br /> <small
											class="text-muted">1:24 pm - 25/03/2015</small>
									</div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="dropdown-messages-box">
									<a href="profile.html" class="pull-left"> <img alt="image"
										class="img-circle" src="http://placehold.it/40/30a5ff/fff">
									</a>
									<div class="message-body">
										<small class="pull-right">1 hour ago</small> <a href="#">New
											message from <strong>Jane Doe</strong>.
										</a> <br /> <small class="text-muted">12:27 pm -
											25/03/2015</small>
									</div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="all-button">
									<a href="#"> <em class="fa fa-inbox"></em> <strong>All
											Messages</strong>
									</a>
								</div>
							</li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle count-info"
						data-toggle="dropdown" href="#"> <em class="fa fa-bell"></em><span
							class="label label-info">5</span>
					</a>
						<ul class="dropdown-menu dropdown-alerts">
							<li><a href="#">
									<div>
										<em class="fa fa-envelope"></em> 1 New Message <span
											class="pull-right text-muted small">3 mins ago</span>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<em class="fa fa-heart"></em> 12 New Likes <span
											class="pull-right text-muted small">4 mins ago</span>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<em class="fa fa-user"></em> 5 New Followers <span
											class="pull-right text-muted small">4 mins ago</span>
									</div>
							</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="profile-sidebar">
			<div class="profile-userpic">
				<img src="http://placehold.it/50/30a5ff/fff" class="img-responsive"
					alt="">
			</div>
			<div class="profile-usertitle">
				<div class="profile-usertitle-name">Username</div>
				<div class="profile-usertitle-status">
					<span class="indicator label-success"></span>Online
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="divider"></div>
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
		<ul class="nav menu">
			<li><a href="dashBoard.do"><em class="fa fa-dashboard">&nbsp;</em> Dashboard</a></li>
			<li><a href="widgets.html"><em class="fa fa-calendar">&nbsp;</em> Widgets</a></li>
			<li><a href="charts.do"><em class="fa fa-bar-chart">&nbsp;</em> Charts</a></li>
			<li><a href="memberManagement.do"><em class="fa fa-toggle-off">&nbsp;</em> Member Management</a></li>
			<li><a href="employeeManagement.do"><em class="fa fa-toggle-off">&nbsp;</em> Employee Management</a></li>	
			<li><a href="inventorySituation.do"><em class="fa fa-clone">&nbsp;</em> Inventory Situation</a></li>
			<li><a href="deliverySituation.do"><em class="fa fa-bar-chart">&nbsp;</em> Delivery Situation</a></li>
			<li class="active"><a href="consultingReservation.do"><em class="fa fa-bar-chart">&nbsp;</em> Consulting Reservation</a></li>
			<li><a href="login.html"><em class="fa fa-power-off">&nbsp;</em> Logout</a></li>
		</ul>
	</div>
	<!--/.sidebar-->

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"> <em class="fa fa-home"></em>
				</a></li>
				<li class="active">Forms</li>
			</ol>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Consulting Reservation</h1>
			</div>
		</div>
		<!--/.row-->

		<!-- 		<div class="row"> -->
		<!-- 			<div class="col-lg-12"> -->
		<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->




		<div id='wrap'>

			<div id='external-events'>
				<h4>Draggable Events</h4>
				<div class='external-event'>consulting</div>
				<div class='external-event'>My Event 2</div>
				<div class='external-event'>My Event 3</div>
				<div class='external-event'>My Event 4</div>
				<div class='external-event'>My Event 5</div>
				<p>
					<input type='checkbox' id='drop-remove' /> <label
						for='drop-remove'>remove after drop</label>
				</p>
			</div>

			<div id='calendar'></div>

			<div style='clear: both'></div>
		</div>





		<!-- 			</div> -->
		<!-- /.panel-->
		<!-- 		</div> -->
		<!-- /.col-->
		<div class="col-sm-12">
			<p class="back-link">
				Lumino Theme by <a href="https://www.medialoot.com">Medialoot</a>
			</p>
		</div>
	</div>
	<!-- /.row -->
	</div>
	<!--/.main-->

<!-- 		<script src="js/jquery-1.11.1.min.js"></script> -->
	<!-- 	<script src="js/bootstrap.min.js"></script> -->
	<!-- 	<script src="js/chart.min.js"></script> -->
	<!-- 	<script src="js/chart-data.js"></script> -->
	<!-- 	<script src="js/easypiechart.js"></script> -->
	<!-- 	<script src="js/easypiechart-data.js"></script> -->
	<!-- 	<script src="js/bootstrap-datepicker.js"></script> -->
	<!-- 	<script src="js/custom.js"></script> -->

</body>
</html>
