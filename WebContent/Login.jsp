<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="loginresult.jsp" method="post">
	<table>
		<tr>
			<td><input type="text" placeholder="아이디" name="id" id="id"/></td>
		</tr>
		<tr>
			<td><input type="password" placeholder="비밀번호" name="pwd" id="pwd"/></td>
		</tr>
		<tr>
			<td><input type="submit" value="로그인"/>  <input type="reset" value="취소"/></td>
		</tr>
	</table>
	</form>
</form>
</body>
</html>