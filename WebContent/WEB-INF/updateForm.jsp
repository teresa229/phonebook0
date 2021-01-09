<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>

<%  
	PersonVo personVo = (PersonVo)request.getAttribute("updateF");
	System.out.println("====updateForm.jsp====");
	System.out.println(personVo); //println은 toString을 불러오게 약속이 되어있다.
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호 수정</h1>
	<p>
		전화번호를 수정하려면<br>
		아래 항목을 기입하고 "수정"버튼을 클릭하세요.
	</p>
	<form action="/phonebook0/pbc" method="get">
			이름(name):<input type="text" name="name" value="<%=personVo.getName()%>"><br> 
			핸드폰(hp):<input type="text" name="hp" value="<%=personVo.getHp()%>"><br>
			회사(company):<input type="text" name="company" value="<%=personVo.getCompany()%>"><br>
			
			action:
			<input type="hidden" name="id" value="<%=personVo.getPersonId()%>"> <!-- id 뺴먹지 말자 -->
			<input type="text" name="action" value="update"> <!--hidden으로 수정-->
			<button type="submit">수정</button>
	</form>
	<br>
	<a href="/phonebook0/pbc?action=list">리스트 바로 가기</a>
</body>
</html>