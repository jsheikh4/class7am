<?php
include("header.php");
// already loged in user name store in session
$username = $_SESSION["username"];
//print_r($_SESSION);
// For testing hardcoded.
?>

<?php
	if(isset($_POST["submit"])) {
		$old_pwd = $_POST["old_pwd"];
		$pwd	= $_POST["pwd"];
		$pwd1 = $_POST["pwd1"];
		
		$error ="";
		// Empty Check
		if($old_pwd=="" || $pwd=="" || $pwd1=="") {
			$error.=" *All fields are required. ";
		}
		// Old pwd check
		$sql = " select * from tbl_admin where password='$old_pwd' and username='$username'";
		$r = mysql_query($sql,$con) or die(mysql_error());
		$num = mysql_num_rows($r);
		if($num<=0) {
			$error.=" *Old password didn't match ";
		}
		// Check pwd and pwd1
		if($pwd!=$pwd1) {
			$error.=" *Password didn't match. ";
		}
		if($error=="") {
		
			$sql =" update tbl_admin set password='$pwd' where username='$username'";
			
			$r = mysql_query($sql,$con) or die(mysql_error());
			if($r) {
				echo " *your pwd has been changed plz logout to effect*  ";
			}
		} else {
			echo $error;
		}
	}
	
?>
<form id="form1" name="form1" method="post" action="">
  <p>Old Password:</p>
  <p>
    <input name="old_pwd" type="text" id="old_pwd" />
</p>
  <p>New Password:</p>
  <p>
    <input name="pwd" type="password" id="pwd" />
</p>
  <p>Re-type your password:</p>
  <p>
    <input name="pwd1" type="password" id="pwd1" />
</p>
  <p><input type="submit" name="submit" value="change" /></p>
 </form>