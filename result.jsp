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
            <td> 이름 </td>
            <td><%=name %> </td>
            
            <tr align="center">

            <td> 좋아하는 과일 </td>
            <td><%for(int i=0;i<fruits.length;i++){%>
               <%=fruits[i] %>
               <%} %>
            </td>
         
            </tr>
         <tr align="center">
         
         <td colspan="2"><input type='submit' name='submit' value="전송"></td>      
         </tr>
        </tr>
    </table>

</body>
</html>