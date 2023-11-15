<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- El ������ core�� ���ڴٰ� ����. �̰� �ؾ� c: �� ��밡�� -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!--  test ��� ����غ��� -->
	<div>
		<table>
			<thead>
				<tr>
					<th>��ȣ</th>
					<th>�ۼ���</th>
					<th>�ۼ���</th>
					<th>����</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="article" items="articles">
					<tr>
					<th>${article.id }</th>
					<th>${article.regDate }</th>
					<th>${article.memberId }</th>
					<th>${article.title }</th>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>