<%@include file ="header.jsp"%>

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->

		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<center>
					<img src="i1.jpg" alt="i Phone">
				</center>
				<div class="carousel-caption">
					<h3>i phone</h3>
					<p>The worlds best phone</p>
				</div>
			</div>

			<div class="item">
				<center>
					<img src="sony.jpg" alt="Sony">
				</center>
				<div class="carousel-caption">
					<h3>Sony Mobiles</h3>
					<p>The flexible phone every one.</p>
				</div>
			</div>
			<div class="item">
				<center>
					<img src="i.jpg" alt="i phones">
				</center>
				<div class="carousel-caption">
					<h3>i phone</h3>
					<p>i phone is invented in america</p>
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		
		
	<%-- ${message} --%>
	
		
</body>

</html>
