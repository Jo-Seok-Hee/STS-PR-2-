<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코어 라이브러리 연습문제1</title>
</head>
<body>
	<!-- 1-1 -->
	<h3>1. JSTL core 변수</h3>
	<c:set var="number1" value="36" /> 
	<c:set var="number2" value="3"  />
	
	<h3>첫번째 숫자 : ${number1 }</h3>
	<h3>두번째 숫자 : ${number2 }</h3>
	
	<!-- 1-2 -->
	<h3>2.JSTL core 연산</h3>
	<h3>더하기 : ${number1+number2 }</h3>
	<h3>빼기 : ${number1-number2 }</h3>
	<h3>곱하기 : ${number1 * number2 }</h3>
	<h3>나누기 : ${number1 / number2 }</h3>
	
	<h3>3.JSTL core out</h3>
	<c:out value="<title>core out</title>"/>
	
	<h3>4. JSTL core if</h3>
	<c:set var="average" value="${(number1+number2)/2 }"/>
	
	<!-- 10보다 크면 <h1>평균 출력 -->
	<c:if test = "${average >= 10 }" ><h1>${average }</h1></c:if>
	
	<!-- 10보다 작으면 <h4>출력 -->
	<c:if test = "${average < 10 }" > <h4>${average }</h4></c:if>
	
	<h3>5.JSTL core if</h3>
	<c:if test="${number1 * number2 > 100 }">
		<c:out value="<script>alert('너무 큰수 입니다')</script>" escapeXml="false" />
	</c:if>
	
	
	
	
	
</body>
</html>