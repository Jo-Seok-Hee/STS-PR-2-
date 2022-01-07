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
<title>종합문제 날씨</title>
</head>
<body>
	<div id="wrap" class="container">
		
		<div id="main" class="w-100 d-flex" style="height:900px;">
			<!-- 메뉴라인 -->
			<div id="menu" class="col-2 ">
				
				<!-- ((로고)기상청) -->
				<header class="p-3">
					<img class="w-100" src="data:image/png;base64,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">
				</header>
				<!-- 메뉴 -->
				<nav>
				 	<ul class="nav flex-column">
				 		<li class="nav-item"><b><a href="#" class="nav-link text-dark" style="font-size:18px;">날씨</a></b></li>
				 		<li class="nav-item"><b><a href="#" class="nav-link text-dark" style="font-size:18px;">날씨입력</a></b></li>
				 		<li class="nav-item"><b><a href="#" class="nav-link text-dark" style="font-size:18px;">테마 날씨</a></b></li>
				 		<li class="nav-item"><b><a href="#" class="nav-link text-dark" style="font-size:18px;">관측 기후</a></b></li>
				 	</ul>
				</nav>
			</div>
			<!-- 체인지 뷰 -->
			<div id="view" class="col-10 ">
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
						<%--반복 시작 --%>
						<c:forEach var="weather" items="${weathers }" varStatus="status">
							<tr>
								<td>${weather.date }</td>
								<td>${weather.weather }</td>
								<td>${weather.temperatures }</td>
								<td>${weather.precipitation }</td>
								<td>${weather.microDust }</td>
								<td>${weather.windSpeed }</td>
							</tr>
						</c:forEach>
						<%--반복 종료 --%>
					</tbody>
				
				
				
				</table>
			</div>
			
		</div>
		<!-- 풋터 -->
		<footer class="d-flex w-100" style="height:80px;">
			<!-- 푸터 이미지 -->
			<div >
				<img style="height:80px;" src="data:image/png;base64,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">
			
			</div>
			<div class="pl-3 text-secondary">
				(07062) 서울시 동작구 여의대방로16길 61  <br>
				Copyright@2020 KMA.All Rights RESERVED
			</div>
			
		</footer>
	
	</div>
</body>
</html>