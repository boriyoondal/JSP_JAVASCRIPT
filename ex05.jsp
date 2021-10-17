<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
   <style>
      tr{
         height: 40px;
         text-align: center;
      }
      table{
         margin: 0 auto;
      }
   </style>
<body>
   <%
      request.setCharacterEncoding("euc-kr"); //먼저
      String name = request.getParameter("name");
      String java = request.getParameter("java");
      String web = request.getParameter("web");
      String iot = request.getParameter("iot");
      String android = request.getParameter("android");
      
      // 스트링을 double로
      double java1 = Double.parseDouble(java);
      double web1 = Double.parseDouble(web);
      double iot1 = Double.parseDouble(iot);
      double android1 = Double.parseDouble(android);
   %>
   
   <fieldset>
         <legend>성적확인프로그램</legend>
         <table width="500">   
            <tr>
               <td>이름</td>
               <td><%=name %></td>
            </tr>
            <tr>
               <td>JAVA점수</td>
               <td><%=java %></td>
            </tr>
            <tr>
               <td>WEB점수</td>
               <td><%=web %></td>
            </tr>
               <tr>
               <td>IOT점수</td>
               <td><%=iot %></td>
            </tr>      
            <tr>
               <td>ANDROID점수</td>
               <td><%=android %></td>
            </tr>
            <%double avg = (java1+web1+iot1+android1)/4; %>
            <tr>
               <td>평균 점수</td>
               <td> <%=avg %></td>
            </tr>   
            <%String a;
            if(avg >= 95){
            a="A+";
            }else if(avg >= 85){
               a="A";
            }else if(avg >= 80){
               a="B+";
            }else if(avg >= 70){
               a="C";
            }else{
               a="F";
            }
               %>
            <tr>
               <td>학점</td>
               <td> <%="<Strong>"+a %></td>
            </tr>                                                                                                      
         </table>
      </fieldset>
</body>
</html>