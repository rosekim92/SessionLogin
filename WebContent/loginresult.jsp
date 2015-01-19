<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- <%
	String id =request.getParameter("id");
	String pwd=request.getParameter("pwd");

	session.setAttribute("id", "id");
	session.setAttribute("pwd", "pwd");
%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String adminid ="admin";
	String adminpwd = "1234";

	String d_id =request.getParameter("id");
	System.out.println("아이디값 넘어오나"+d_id);
	String d_pwd=request.getParameter("pwd");

	session.setAttribute("t_id", d_id);
	System.out.println("세션에 저장");
	session.setAttribute("t_pwd", d_pwd);

	String s_id=(String)session.getAttribute("t_id");
	System.out.println("세션에서가져오기"+s_id);
	String s_pwd=(String)session.getAttribute("t_pwd");
	
	if(adminid.equals(s_id) && adminpwd.equals(s_pwd))
	{
		PrintWriter logsucc = response.getWriter(); 

		logsucc.println("<script type=\'text/javascript'>"); 
		logsucc.println("location.replace('loginOk.jsp')");
		logsucc.println("</script>"); 
		
	}else{
		PrintWriter logfail = response.getWriter(); 

		logfail.println("<script type=\'text/javascript'>"); 
		logfail.println("alert('아이디나 비밀번호가 다릅니다.');history.back();");
		logfail.println("</script>"); 
		
	}
%>
<h1>로그인 성공</h1>
</body>
</html>