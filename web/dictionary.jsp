<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: ThanhPC
  Date: 10/14/2019
  Time: 3:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%! Map<String,String> dictionary=new HashMap<>();
  %>
 <%
     dictionary.put("hello","xin chao");
     dictionary.put("book","quyển vở");
     dictionary.put("tiger","con hổ");
     dictionary.put("computer","máy tính");
     String  search=request.getParameter("txtInput");
     String  result= dictionary.get(search);
     if(result != null){
    out.println("Word: "+search);
    out.println("Result: "+result);
     }else{
         out.print("not found");
     }
%>
</body>
</html>
