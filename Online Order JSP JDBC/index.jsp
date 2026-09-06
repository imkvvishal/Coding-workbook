<%--
 Document : index
 Created on : 3 Sep, 2026, 2:43:33 PM
 Author : 24uad091
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>JSP Page</title>
 </head>

 <%
 String name=request.getParameter("name");
 String email=request.getParameter("email");
 String phone=request.getParameter("phone");
 String price=request.getParameter("price");
 String quantity=request.getParameter("quantity");


 String sql="insert into userdetails(name,email,phone,price,quantity)
values(?,?,?,?,?)";

 String sql1 = "SELECT * FROM userdetails";



 try{
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?allowPublicKeyRetrieval
=true&useSSL=false",
 "root","test@123");
 PreparedStatement ps=con.prepareStatement(sql);
 ps.setString(1,name);
 ps.setString (2,email);
 ps.setString(3,phone);
 ps.setString(4,price);
 ps.setString(5,quantity);

 int i=ps.executeUpdate();
 if(i>0){
 %>
 <h2> Your order is placed </h2>
 <h2> Name :<%= name %></h2>
 <h2> Email :<%= email %></h2>
 <h2> Phone Number :<%= phone %></h2>
 <h2> Price :<%= price %></h2>
 <h2> Quantity :<%= quantity %></h2>
 <%
 PreparedStatement ps1=con.prepareStatement(sql1);
 ResultSet rs = ps1.executeQuery();

 %>

 <table border="1" >
 <tr>
 <th>Name</th>
 <th>Email</th>
 <th>Phone</th>
 <th>Price</th>
 <th>Quantity</th>
 </tr>
 <%
 while (rs.next()) {
 %>
 <tr>
 <td><%= rs.getString("name") %></td>
 <td><%= rs.getString("email") %></td>
 <td><%= rs.getString("phone") %></td>
 <td><%= rs.getString("price") %></td>
 <td><%= rs.getString("quantity") %></td>
 </tr>
 <%
}
 %>
 </table>

 <% }
 }catch(Exception e){
 System.out.println(e);
 }

 %>



</html>