<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
 if(!isset($_SESSION['username'])){
  header('location:logout1.php'); 
  } else{
    if(isset($_POST['submit']))
  {

$cvmsaid=$_SESSION['username'];
 $fullname=$_POST['fullname'];

$mobnumber=$_POST['mobilenumber'];
$email=$_POST['email'];
$add=$_POST['address'];
$whomtomeet=$_POST['whomtomeet'];
$department=$_POST['department'];
$reasontomeet=$_POST['reasontomeet'];
 $query=mysqli_query($con,"insert into tblvisitor(FullName,Email,MobileNumber,Address,WhomtoMeet,Deptartment,ReasontoMeet) value('$fullname','$email','$mobnumber','$add','$whomtomeet','$department','$reasontomeet')");

    if ($query) {
    $msg="Succesfully Added.";
  }
  else
    {
      $msg="Something Went Wrong. Please try again";
    }

  
}

?>