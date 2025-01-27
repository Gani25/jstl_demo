<%@page import="com.utility.Util"%>
<%@page import="com.entity.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<%
	List<Student> students = Util.getAllStudents();
	%>

	<div class="container">
	<h1 class="text-center mt-5">Student Information</h1>

		<table class="table table-bordered table-striped mt-5">
			<thead class="table-dark">
				<tr>
					<th scope="col">Roll No</th>
					<th scope="col">Name</th>
					<th scope="col">Gender</th>
					<th scope="col">Marks</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (Student tempStudent : students) {
					out.print("<tr>");
					out.print("<td>" + tempStudent.getRollNo() + "</td>");
					out.print("<td>" + tempStudent.getName() + "</td>");
					out.print("<td>" + tempStudent.getGender() + "</td>");
					out.print("<td>" + tempStudent.getMarks() + "</td>");
					out.print("</tr>");
				}
				%>

			</tbody>
		</table>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

</body>
</html>