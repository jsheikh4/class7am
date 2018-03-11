<link rel="stylesheet" href="style.css" type="text/css">
<link rel="stylesheet" href="../style.css"  type="text/css">

<div id="wrapper">
<div id="header">
<h1><a href="http://localhost/student/index.php" class="button" role="button">STUDENT MANAGEMENT SYSTEM</a> </h1>
</div>


<?php
include("../conn.php");
?>

<?php
if(isset($_SESSION['error']))
	{
		echo $_SESSION['error'];
		session_destroy();
	}
?>

</br>
</br>
</br>
</br>
</br>


<form name="form" method="post" action="validation.php">
  <table width="310" height="108" border="0" align="center">
    <tr>
      <td colspan="2"><img src="../images/login.jpg" width="235" height="46" /></td>
    </tr>
    <tr>
      <td width="77"><strong>Username </strong></td>
	  <td width="404"><input type="text" name="username"></td>
    </tr>
    <tr>
      <td><strong>Password</strong></td>
      <td><input type="password" name="password"></td>
    </tr>
    <tr>
      <td colspan="2"><input type="submit" name="Submit" value="Submit">
      <input type="reset" name="Submit2" value="Reset"></td>
    </tr>
  </table>
</form>
</div>