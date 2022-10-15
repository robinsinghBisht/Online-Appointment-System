<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page session="false" %>
<%@ page isELIgnored="false"%>
<jsp:include page="includes/header.jsp"/>

		   <div class="wrap">
		   	<div class="erroe-page">
		   		<h3>404 - NOT FOUND</h3>
		   		<h4>The requested URL ${pageContext.errorData.requestURI} was not found on this server.</h4>
		   	</div>
		   </div>


<jsp:include page="includes/footer.jsp"/>