<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>과거 날씨</title>
</head>
<body>
 	<%-- <jsp:include page="total/weatherTable.jsp" flush="true"></jsp:include> --%>
 	
 	
				<h1>과거 날씨</h1>
				
				<table class="table text-center">
					<thead>
						<tr>
							<th>날짜</th>
							<th>날씨</th>
							<th>기온</th>
							<th>강수량</th>
							<th>미세먼지</th>
							<th>풍속</th>
						</tr>
					</thead>
					<tbody>
					<%--반복 --%>
					<c:forEach var="weather" items="${weathers }" varStatus="status">
						<tr>
							<td>
								<fmt:formatDate value="${weather.date }" pattern="yyyy년 MM월 dd일"></fmt:formatDate>
							
								
							</td>
							
							<%-- 비, 흐림, 맑음, 구름조금 ${weather.weather }--%>
							<td>
								<c:choose>
									<c:when test="${weather.weather == '비' }">
										<img src="http://marondal.com/material/images/dulumary/web/jstl/rainy.jpg">
								
									</c:when>
									<c:when test="${weather.weather == '맑음' }">
										<img src="http://marondal.com/material/images/dulumary/web/jstl/sunny.jpg">
									</c:when>
									<c:when test="${weather.weather == '흐림' }">
										<img src="http://marondal.com/material/images/dulumary/web/jstl/cloudy.jpg">
									</c:when>
									<c:otherwise>
										<img src="http://marondal.com/material/images/dulumary/web/jstl/partlyCloudy.jpg">
									</c:otherwise>

								</c:choose>
							</td>
							<td>${weather.temperatures }℃</td>
							<td>${weather.precipitation }mm</td>
							<td>${weather.microDust }</td>
							<td>${weather.windSpeed }km/h</td>
						</tr>
					</c:forEach>
					<%--반복 --%>
					</tbody>
				
			</table>
			

</body>
</html>