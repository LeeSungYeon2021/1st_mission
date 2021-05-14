<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
    
<!-- JSTL 라이브러리 호출 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- header css 호출 -->
<link rel="stylesheet" type="text/css" href="/resources/css/common/header.css">

<!-- 로컬환경 PATH값 저장 -->
<c:set var="path" value="${pageContext.request.contextPath }"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">

<!-- jquery 호출 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- bootstrap 호출 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<header>
		<div class="container-fluid">
			<div>
				<div class="row">
					<div class="header-month">
						<div class="col-lg-1">
							<span>
								<i class="fa fa-angle-left fa-3x"></i>
							<span>
						</div>
						
						<div class="col-lg-1 header_date">
							<span>2021.05</span>
						</div>
						
						<div class="col-lg-1 after-arrow">
							<span class="next_arrow">
								<i class="fa fa-angle-right fa-3x"></i>
							</span>
						</div>
					</div>	
				</div>
			</div>
			
			<div>
				<div class="header_allschedule"><span>전체일정(xx)</span></div>
			</div>
		</div>
	</header>