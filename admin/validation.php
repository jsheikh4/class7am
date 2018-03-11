<?php 
include("../conn.php");


$username=$_POST ['username'];
$password=$_POST ['password'];
$sql ="select * from tbl_admin where username='$username' and password='$password'";
$result=mysql_query($sql,$con) or die(mysql_error());
$num=mysql_num_rows($result);
	if($num>0)
		{
			$_SESSION["username"]=$username;			
			header("location: adminloggedin.php");
		}
	else
		{
			$_SESSION['error']="Please check your username and password";
			header("location: index.php");
		}
?>