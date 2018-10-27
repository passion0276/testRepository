<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<c:url value="/test.controller"/>">
		<table>
			<tr>
				<td>ID :</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>Age :</td>
				<td><input type="text" name="age"></td>
			</tr>

			<tr>
				<td>Name :</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td><input type="submit" name="test" value="Insert"></td>
				<td><input type="submit" name="test" value="Select"></td>
		</table>
	</form>
	<h3>
		<span class="error">${errors.action}</span>
	</h3>
	<table border="1">
		<tr>
				<td>Id</td>
				<td>Name</td>
				<td>Age</td>
		</tr>
	<c:if test="${not empty insert}">
			<tr>
				<td>${insert.id}</td>
				<td>${insert.name}</td>
				<td>${insert.age}</td>
			</tr>	
	</c:if>
	<c:if test="${not empty select}">
		<c:forEach var="bean" items="${select}">
			<tr>
				<td>${bean.id}</td>
				<td>${bean.name}</td>
				<td>${bean.age}</td>
			</tr>
		</c:forEach>
	</c:if>
	</table>
		<script type="text/javascript">
			clearForm();
		</script>
</body>
</html>