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
	
	<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="/style/p06Total.css" type="text/css">
<title>예약하기 페이지</title>
</head>
<body>
	<div id="wrap">
		<jsp:include page="templete/totalMenu.jsp" flush="true"></jsp:include>
	
		
		<div class="container w-50" >
			<h1 class="text-center pt-3">예약 하기</h1>
			
			
				<label>이름</label><br>
				<input type="text" class="form-control" name="name" id="">
				
				<label>예약날짜</label><br>
				<input type="text" class="form-control" name="date" placeholder="입력 예시: ex)20220114 년,월,일">
				
				<label>숙박일수</label><br>
				<input type="text" class="form-control" name="day">
				
				<label>숙박인원</label><br>
				<input type="text" class="form-control" name="headcount">
				
				<label>전화번호</label><br>
				<input type="text" class="form-control" name="phoneNumber">
				<br>
				<button type="button" class="btn btn-warning form-control" id="bookingBtn">예약 해버리기</button>
			
	
	
	
	
	
		</div>
		
		<jsp:include page="templete/totalFooter.jsp" flush="true"></jsp:include>
	</div>
	
	<script>
		$(document).ready(function(){
			
			$("#bookingBtn").on("click",function(){
				let name = $("#")
			});
		});
	
	
	
	
	</script>
</body>
</html>