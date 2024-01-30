<?php

session_start();

$con= mysqli_connect("localhost","root","");
mysqli_select_db($con, 'cvmsdb');


$name = $_POST['username'];
$pass = $_POST['password'];
$s = (" select * from tbllogin where username = '$name' && password='$pass' ");
$result = mysqli_query($con, $s);

$num = mysqli_num_rows($result);
if($num>0)
{
$urow=mysqli_fetch_array($result);
$u=$urow['type'];
$id=$urow['username'];

 if($u=="user")
{
session_start();
$_SESSION['username']=$name;
header('location:user.php');
}
 
{
echo mysqli_error();
}  
}
else{
       header('location:login.php');
} 