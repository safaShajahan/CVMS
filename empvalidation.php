<?php

session_start();

$con= mysqli_connect("localhost","root","");
mysqli_select_db($con, 'cvmsdb');


$name = $_POST['username'];
$pass = $_POST['password'];
$s = (" select * from tblemp where UserName = '$name' && Password='$pass' ");
$result = mysqli_query($con, $s);

$num = mysqli_num_rows($result);
if($num>0)
{
$urow=mysqli_fetch_array($result);
$u=$urow['type'];
$id=$urow['UserName'];

 if($u=="emp")
{
session_start();
$_SESSION['UserName']=$name;
header('location:employee.php');
}
 
{
echo mysqli_error();
}  
}
else{
       header('location:emplogin.php');
} 