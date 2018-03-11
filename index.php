<?php
include("header.php");
?>
<?php
include("menu.php");
?>
<form name="form" method="post" action="index.php">
  <table width="310" height="108" border="0" align="center">
   
    <tr>
      <td width="77"><strong>ID </strong></td>
	  <td width="404"><input type="text" name="username"></td>
    </tr>
    <tr>
      <td><strong>Password</strong></td>
      <td><input type="password" name="password"></td>
    </tr>
    <tr>
      <td colspan="2"><input type="submit" name="Submit" value="Submit">
      <td><input type="reset" name="Submit2" value="Reset"></td>
      
    </tr>
  </table>
</form>
<?php
// this is the package for connection and selection of database
include("conn.php");
if($_POST){
$id=$_POST ['username'];
$password=$_POST ['password'];
$sql ="select * from tbl_student where student_id='$id' and student_id='$password'";
$result=mysql_query($sql,$con) or die(mysql_error());
$num=mysql_num_rows($result);
	if($num>0)
		{
			$_SESSION["student_id"]=$id;			
			header("location: student.php");
		}
	else
		{
			$_SESSION['error']="Please check your username and password";
			header("location: index.php");
		}
	}
?>

<div id="wrapper"
<div class="main">
<img src="images/school.jpg" width="1025" height="401" />
</div>
</div>
<?php
include("footer.php");
?>