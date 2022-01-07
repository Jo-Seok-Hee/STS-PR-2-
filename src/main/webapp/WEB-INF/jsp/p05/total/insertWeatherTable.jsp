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
<title>날씨 입력</title>
</head>
<body>
	
		
		<div class="container">
		<h1>날씨 입력</h1>
			<form method="get" action="/p05/insertWeather">
				<div class="d-flex">
					<label>날짜</label><input type="text" class="form-control w-25" name="date">
				
					<label class="ml-3">날씨</label>
					<select name="weather" class="form-control w-25">
						<option value="맑음">맑음</option>
						<option value="흐림">흐림</option>
						<option value="비">비</option>
						<option value="구름조금">구름조금</option>
					</select>
					
					<label class="ml-3">미세먼지</label>
					<select name="microDust" class="form-control w-25">
						<option value="좋음">좋음</option>
						<option value="보통">보통</option>
						<option value="나쁨">나쁨</option>
						<option value="최악">최악</option>
					</select>
	
				</div>
				<br><br>
				<div class="d-flex">
				
						<label>기온</label>
					
						<input type="text" class="form-control w-25" name="temperatures">
						<div class="input-group-append">
						    <span class="input-group-text">℃</span>
						</div>
						
						<label>강수량</label>
					
						<input type="text" class="form-control w-25" name="precipitation">
						<div class="input-group-append">
						    <span class="input-group-text">℃</span>
						</div>
						
						<label>풍속</label>
					
						<input type="text" class="form-control w-25" name="windSpeed">
						<div class="input-group-append">
						    <span class="input-group-text">℃</span>
						</div>		
				</div>	
				
				<div >
					<button type="submit" class="btn btn-primary float-right">저장</button>
				</div>		
			</form>
		</div>

</body>
</html>