<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${pageTitle }</title>
<!-- 테일윈드 치트시트 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" />
<!-- 제이쿼리 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- 폰트어썸 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
<link rel="stylesheet" href="/resource/common.css" />
</head>
<body>
	<div class="h-20 flex mx-auto text-4xl bg-green-300 text-white mb-8">
		<div>
			<a class="h-full px-3 flex items-center" href="/"><span
				class=logo_name>Agora</span></a>
		</div>
		<div class="flex-grow"></div>
		<ul class="flex">
			<li class="hover:underline"><a
				class="h-full px-3 flex items-center" href="/"><span>HOME</span></a></li>
			<li class="hover:underline"><a
				class="h-full px-3 flex items-center" href="/usr/article/list?boardId=1"><span>NOTICE</span></a></li>
			<li class="hover:underline"><a
				class="h-full px-3 flex items-center" href="/usr/article/list?boardId=2"><span>FREE</span></a></li>

			<c:if test="${rq.getLoginedMemberId() == 0 }">
				<!-- jsp에서 el 문법 사용 가능  -->
				<li class="hover:underline"><a
					class="h-full px-3 flex items-center" href="/usr/member/login"><span>LOGIN</span></a></li>
			</c:if>
			<c:if test="${rq.getLoginedMemberId() != 0 }">
				<!-- test부분의 조건이 true이면 실행되는 원리 -->
				<li class="hover:underline"><a
					class="h-full px-3 flex items-center" href="/usr/member/doLogout"><span>LOGOUT</span></a></li>
			</c:if>
		</ul>
	</div>

	<section class="my-3 text-2xl">
		<div class="container mx-auto px-3">
			<h1>${pageTitle }</h1>

		</div>
	</section>