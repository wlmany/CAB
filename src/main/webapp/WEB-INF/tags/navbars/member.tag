<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-expand-lg">
	<a class="navbar-brand" href="#">CAB</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	
	<ul class="navbar-nav mr-auto">
	<li class="nav-item">
		<a class="nav-link" href="#" role="button">
		Search Facilities
		</a>
	</li>
	<li class="nav-item dropdown">
		<a class="nav-link dropdown-toggle" href="#" id="bookingDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		Booking
		</a>

		<div class="dropdown-menu" aria-labelledby="bookingDropdown">
		<a class="dropdown-item" href="#">Make Booking</a>
		<a class="dropdown-item" href="#">Manage Bookings</a>
		</div>
	</li>
	</ul>

	<ul class="navbar-nav">
	<li class="nav-item"><a class="nav-link" href="">Logout</a></li> 
	</ul>
</nav> 