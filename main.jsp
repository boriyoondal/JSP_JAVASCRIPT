<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% 
	//String id = request.getParameter("id");
	String id = (String)session.getAttribute("id");
	request.setCharacterEncoding("euc-kr");
	%>
	<table border="1px">
	
        <tr>
            <tr align="center">
            <td> <%=id %> 님 환영합니다! </td>

            <tr align="center">
            <td>
            <form action="Logout" method="post">
            <input type="submit" name="logout" value="로그아웃">
            </form>
            </td>

        </tr>
    </table>
</body>
</html>