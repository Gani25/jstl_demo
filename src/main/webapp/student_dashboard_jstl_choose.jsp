<%@page import="com.utility.Util"%>
<%@page import="com.entity.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Dashboard</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

</head>
<body>

	<!-- Create a list using jstl core -->
	<c:set var="students" value="<%=Util.getAllStudents()%>"></c:set>

	<div class="container">
		<h1 class="text-center mt-5">Student Information</h1>

		<table class="table table-bordered table-striped mt-5">
			<thead class="table-dark">
				<tr>
					<th scope="col">Roll No</th>
					<th scope="col">Name</th>
					<th scope="col">Gender</th>
					<th scope="col">Marks</th>
					<th scope="col">Result</th>
					<!-- 
					Grade Criteria
					marks between 100 to 85 -> A
					marks between 84 to 70 -> B
					marks between 69 to 55 -> C
					marks between 54 to 35 -> D 
					marks below 35 -> Fail 
					 -->
				</tr>
			</thead>
			<tbody>
				<c:forEach var="tempStudent" items="${students}">
					<tr>
						<td>${tempStudent.rollNo }</td>
						<td>${tempStudent.name }</td>
						<td>${tempStudent.gender }</td>
						<td>${tempStudent.marks }</td>
						<td><c:choose>
								<c:when test="${tempStudent.marks>=85}">
									<span style="color: #03fc41;">A</span>
								</c:when>
								<c:when test="${tempStudent.marks>=70}">
									<span style="color: #6ffc7d;">B</span>
								</c:when>
								<c:when test="${tempStudent.marks>=55}">
									<span style="color: #9efc05;">C</span>
								</c:when>
								<c:when test="${tempStudent.marks>=35}">
									<span style="color: #fce005;">D</span>
								</c:when>
								<c:otherwise>
									<span style="color: #fc0505;">FAIL</span>
								</c:otherwise>

							</c:choose></td>
					</tr>

				</c:forEach>
			</tbody>
		</table>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

</body>
</html>