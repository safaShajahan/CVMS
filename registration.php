<?php

session_start();
header('location:register1.php');
$con= mysqli_connect("localhost","root","");
mysqli_select_db($con, 'cvmsdb');


$name = $_POST['username'];
$pass = $_POST['password'];
$type = $_POST['usr'];
$s = " select * from tbllogin where username = '$name'";
$result = mysqli_query($con, $s);

$num = mysqli_num_rows($result);
if($num==1)
{
    echo" username Already Taken";
    
}
else

{
    $reg= "insert into tbllogin(username,password,type) values ('$name' , '$pass' , '$type')";
    mysqli_query($con,$reg);
    echo" Registration Succesfull";
}
?>