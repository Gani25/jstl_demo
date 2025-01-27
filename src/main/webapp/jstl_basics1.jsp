<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL CORE TAGS</title>
</head>
<body>
	<h1>Jakarta Standard Tag Library</h1>
	<c:set var="time" value="<%=new Date()%>" />

	<h4>Time on server is: ${time}</h4>
	<c:set var="location" value="Navi Mumbai"></c:set>
	<p>
	
		Location of server is <strong><u>${location}</u></strong>
	</p>
	<p>
		Location of server is <strong><u><c:out value="${location}"></c:out></u></strong>
	</p>
</body>
</html>