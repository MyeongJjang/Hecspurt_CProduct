<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<meta charset="UTF-8">
	<!--meta name="viewport", 반응형 웹-->
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- 익스플로러 최신버전으로 작동 -->
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<!--"telephone=no" 전화번호가 링크로 걸리는것을 방지-->
	
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="/Hecspurt_cproduct/css/header.css">

<header>
	<div>
		<div>
			<h1><a href="#"><img src="/Hecspurt_cproduct/image/mainlogo.png" alt="main_logo"></a></h1>
		
			<h2 class="hide">제품</h2>
			<nav>
			<ul class="middleMenu">
				<li><a href="/Hecspurt_cproduct/notice/noticeBoard?pg=1">아우터</a></li>
				<li><a href="/Hecspurt_cproduct/notice/eventBoard">상의</a></li>
				<li><a href="/Hecspurt_cproduct/notice/faqBoard?pg=1">하의</a></li>
				<li><a href="/Hecspurt_cproduct/notice/qnaBoard?pg=1">악세사리</a></li>
			</ul>
			</nav>	
		</div>
		
		<!--				header 로그인메뉴				-->
			<ul class="spot">
				<c:if test="${memId == null }">
					<li><a href="/Hecspurt_cproduct/write/memberAgree"><span>Sign Up</span></a></li>
					<li><a href="/Hecspurt_cproduct/login/loginForm"><i class="xi-user"></i><span>Login</span></a></li>					
				</c:if>
					
				<c:if test="${memId != null }">
					<li><a href="/Hecspurt_cproduct/mypage/mypageMain"><span>My Page</span></a></li>
					<li><a href="/Hecspurt_cproduct/login/logout"><span>Logout</span></a></li>
					<li><a href="/Hecspurt_cproduct/cart"><span>cart</span></a></li>
				</c:if>
			</ul>
	</div>
</header>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/Hecspurt_cproduct/js/header.js"></script>