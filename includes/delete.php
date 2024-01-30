<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['cvmsaid']==0)) {
  header('location:logout.php');
  } else{
    if(isset($_POST['submit']))
  {
$eid=$_GET['ID'];

 $query=mysqli_query($con,"delete from tblemp where ID= '$eid'");
 

    if ($query) {
    $msg="Employee  has been Removed.";
     mysqli_close($con); // Close connection
    header("location:manage-emp.php"); // redirects to all records page
    exit;	
}
else
{
    echo "Error deleting record"; // display error message if not delete
}
    }
}
?>