<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "user.userDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty name ="user" property = "userID"/> 
<jsp:setProperty name ="user" property = "userPassword"/> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		userDAO u = new userDAO();
	
		int result = u.login(user.getUserID(), user.getUserPassword());
		
		if(result == 1){
			PrintWriter sc = response.getWriter();
			sc.println("<script>");
			sc.println("location.href = 'main.jsp'");
			sc.println("</script>");
		}
		else if(result == 0){
			PrintWriter sc = response.getWriter();
			sc.println("<script>");
			sc.println("alert('비밀번호가 틀립니다.')");
			sc.println("history.back()");
			sc.println("</script>");
		}
		else if(result == 2){
			PrintWriter sc = response.getWriter();
			sc.println("<script>");
			sc.println("alert('데이터베이스에 오류가 발생했습니다.')");
			sc.println("history.back()");
			sc.println("</script>");
		}
		else if(result == -1){
			PrintWriter sc = response.getWriter();
			sc.println("<script>");
			sc.println("alert('존재하지않는 아이디입니다.')");
			sc.println("history.back()");
			sc.println("</script>");
		}
	%>
</body>
</html>