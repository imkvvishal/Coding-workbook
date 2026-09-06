<%--
 Document : process
 Created on : 3 Sep, 2026, 2:11:34 PM
 Author : 24uad091
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>JSP Page</title>
 </head>
 <body>
 <center>
 <h1> User Registration Details</h1>
 </center>
 <%
 String username=request.getParameter("username");
 String password=request.getParameter("password");
 String name=request.getParameter("name");
 String credit=request.getParameter("credit");
 String email=request.getParameter("email");
 String phone=request.getParameter("phone");
 %>
 <center>
 <h4>User Name : <%= username %></h4>
 <h4>Password : <%= password %></h4>
 <h4>Name : <%= name %></h4>
 <h4>Credit Card Number : <%= credit %></h4>
 <h4>Email : </strong><%= email %></h4>
 <h4>Phone Number : <%= phone %></h4>
 </center>
 </body>
</html>