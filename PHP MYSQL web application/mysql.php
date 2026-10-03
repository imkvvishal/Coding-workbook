<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
 <head>
 <meta charset="UTF-8">
 <title>Ex-11 exercise</title>
 </head>
 <body>
 <?php
 $name=$_POST["name"];
 $email=$_POST['email'];
 $phone=$_POST["phone"];
 $price=$_POST["price"];
 $quantity=$_POST["quantity"];

 echo "Name :" . $name ."<br>";
 echo "Email :" . $email ."<br>";
 echo "Phone Number :" . $phone ."<br>";
 echo "Price :" . $price ."<br>";
 echo "Quantity :" . $quantity ."<br>";

 $conn=mysqli_connect("localhost","root","test@123","mysql");
 $sql="INSERT INTO orders
(name,email,phone,price,quantity)VALUES('$name','$email','$phone','$price','$quantity')";
 mysqli_query($conn,$sql);
 echo "INserted Successfully";
 ?>

 <table border="1">
 <tr>
 <th>Name</th>
 <th>Email</th>
 <th>Phone number</th>
 <th>price</th>
 <th>quantity</th>
 </tr>
 <?php
 while($row= mysqli_fetch_assoc($result)){
 ?>
 <tr><td>
 <?php echo $row["name"]; ?>
 </td></tr>
 <tr><td>
 <?php echo $row["email"]; ?>
 </td></tr>
 <tr><td>
 <?php echo $row["name"]; ?>
 </td></tr>
 <tr><td>
 <?php echo $row["phone"]; ?>
 </td></tr>
 <tr><td>
 <?php echo $row["price"]; ?>
 </td></tr>
 <tr><td>
 <?php echo $row["quantity"]; ?>
 </td></tr>
 }
 ?>
 </table>
 </body>
</html>