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
   request.setCharacterEncoding("euc-kr");
   String [] fruits = request.getParameterValues("fruits");
   String name  = request.getParameter("name");
   %>


   <table border="1px">
        <tr>
            <tr align="center">
            <td> �̸� </td>
            <td><%=name %> </td>
            
            <tr align="center">

            <td> �����ϴ� ���� </td>
            <td><%for(int i=0;i<fruits.length;i++){%>
               <%=fruits[i] %>
               <%} %>
            </td>
         
            </tr>
         <tr align="center">
         
         <td colspan="2"><input type='submit' name='submit' value="����"></td>      
         </tr>
        </tr>
    </table>

</body>
</html>