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
      request.setCharacterEncoding("euc-kr"); //����
      String name = request.getParameter("name");
      String java = request.getParameter("java");
      String web = request.getParameter("web");
      String iot = request.getParameter("iot");
      String android = request.getParameter("android");
      
      // ��Ʈ���� double��
      double java1 = Double.parseDouble(java);
      double web1 = Double.parseDouble(web);
      double iot1 = Double.parseDouble(iot);
      double android1 = Double.parseDouble(android);
   %>
   
   <fieldset>
         <legend>����Ȯ�����α׷�</legend>
         <table width="500">   
            <tr>
               <td>�̸�</td>
               <td><%=name %></td>
            </tr>
            <tr>
               <td>JAVA����</td>
               <td><%=java %></td>
            </tr>
            <tr>
               <td>WEB����</td>
               <td><%=web %></td>
            </tr>
               <tr>
               <td>IOT����</td>
               <td><%=iot %></td>
            </tr>      
            <tr>
               <td>ANDROID����</td>
               <td><%=android %></td>
            </tr>
            <%double avg = (java1+web1+iot1+android1)/4; %>
            <tr>
               <td>��� ����</td>
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
               <td>����</td>
               <td> <%="<Strong>"+a %></td>
            </tr>                                                                                                      
         </table>
      </fieldset>
</body>
</html>