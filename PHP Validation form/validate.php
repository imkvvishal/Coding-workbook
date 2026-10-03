<?php
$card = $_POST["card"];
$email = $_POST["email"];
$phone = $_POST["phone"];
$password = $_POST["password"];
$errors = array();
$validate = true;
// Validate password
if (!preg_match("/^(?=.*[A-Za-z])(?=.*[0-9]).{8,}$/", $password)) {
 $errors[] = "Invalid Password";
 $validate = false;
}
// Validate email
if (!preg_match("/^[\w\.-]+@[\w\.-]+\.\w{2,4}$/", $email)) {
 $errors[] = "Invalid Email";
 $validate = false;
}
// Validate phone
if (!preg_match("/^[0-9]{10}$/", $phone)) {
 $errors[] = "Phone number must contains 10 digits";
 $validate = false;
}
// Validate card
if (!preg_match("/^[0-9]{13,19}$/", $card)) {
 $errors[] = "Invalid Card Number";
 $validate = false;
}
if ($validate) {
 echo "Password :".$password."<br>";
 echo "Credit Card Number :".$card."<br>";
 echo "Email :".$email."<br>";
 echo "Phone Number :".$phone."<br>";
 echo "<h2> Registration successful</h2>";
} else {
 foreach ($errors as $error) {
 echo $error . "<br>";
 }
}
?>