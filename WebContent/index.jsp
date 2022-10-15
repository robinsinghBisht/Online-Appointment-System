<jsp:include page="includes/header.jsp"/>    
<%@ page session="false" %>
<%@ page isELIgnored="false"%>
		<div class="clear"> </div>
			<!--start-image-slider---->
					<div class="image-slider">
						<!-- Slideshow 1 -->
					    <ul class="rslides" id="slider1">
					      <li><img src="images/slider-image1.jpg" alt=""></li>
					      <li><img src="images/slider-image2.jpg" alt=""></li>
					      <li><img src="images/slider-image3.jpg" alt=""></li>
					    </ul>
						 <!-- Slideshow 2 -->
					</div>
					<!--End-image-slider---->
		    <div class="clear"> </div>
		    <div class="content-grids">
		    	<div class="wrap">
		    	<div class="section group">
				<div class="listview_1_of_3 images_1_of_3">
					<div class="listimg listimg_1_of_2">
						  <img src="images/grid-img1.png" onclick="location.href='indexOldPatientLogin.jsp'" style="cursor: pointer;">
					</div>
					<div class="text list_1_of_2" onclick="location.href='indexOldPatientLogin.jsp'" style="cursor: pointer;">
						  <h3>Patient with UHID</h3>
						  <p>Need More info?</p>
						  <div class="button"><span><a href="indexOldPatientLogin.jsp">Click Here</a></span></div>
					</div>
				</div>				
				<div class="listview_1_of_3 images_1_of_3">
					<div class="listimg listimg_1_of_2">
						  <img src="images/grid-img2.png" onclick="location.href='indexPatientLogin.jsp'" style="cursor: pointer;">
					</div>
					<div class="text list_1_of_2" onclick="location.href='indexPatientLogin.jsp'" style="cursor: pointer;">
						  <h3>Patient Login</h3>
						  <p>Need More info?</p>
						  <div class="button"><span><a href="indexPatientLogin.jsp">Click Here</a></span></div>
				     </div>
				</div>				
				<div class="listview_1_of_3 images_1_of_3">
					<div class="listimg listimg_1_of_2">
						  <img src="images/grid-img3.png" onclick="location.href='indexPatientSignUp.jsp'" style="cursor: pointer;">
					</div>
					<div class="text list_1_of_2" onclick="location.href='indexPatientSignUp.jsp'" style="cursor: pointer;">
						  <h3>Sign Up Now</h3>
						  <p>Need More info?</p>
						  <div class="button"><span><a href="indexPatientSignUp.jsp">Click Here</a></span></div>
				    </div>
				</div>				
			</div>
		    </div>
		   </div>
		   
<jsp:include page="includes/footer.jsp"/>    