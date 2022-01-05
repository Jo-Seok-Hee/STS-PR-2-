<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>멤버십</title>
</head>
<body>
	<div class="container">
		<table class="table">
		
			<thead>
				<tr>
					<th>이름</th>
					<th>전화 번호</th>
					<th>등급</th>
					<th>포인트</th>
				</tr>
			</thead>
			<tbody>
			
			<%--반복, 등급이 VIP인경우 글씨를 빨간색으로,
			 등급이 GOLD인경우 노란색으로 표시하세요.
             포인트가 5000점 이상이면 포인트를 파란색으로 표시하세요.--%>
			<c:forEach var="ms" items="${membership }" varStatus="status">
				<tr>
					<td>${ms.name }</td>
					<td>${ms.phoneNumber }</td>
					<c:choose>
						<c:when test="${ms.grade == 'VIP'}">
							<td><label class="text-danger">${ms.grade }</label></td>
						</c:when>
						<c:when test="${ms.grade == 'GOLD'}" >
							<td><label class="text-warning">${ms.grade }</label></td>
						</c:when>
						<c:otherwise>
							<td>${ms.grade }</td>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${ms.point ge 5000 }">
							<td><label class="text-primary">${ms.point }</label>p</td>
						</c:when>
						<c:otherwise>
							<td>${ms.point }p</td>
						</c:otherwise>
					</c:choose>
				</tr>
			</c:forEach>
			<%--반복 --%>	
			</tbody>

		</table>
		
		<label class="text-danger">아아ㅏ앙</label>
	
	
	
	
	
	
	
	
	
	
	</div>
</body>
</html>