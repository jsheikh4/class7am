
<?php
include("../conn.php");
if($_SESSION["username"]=="") {
	header("location: index.php");
	die();
}
?>
<link rel="stylesheet" href="../style.css"  type="text/css">
<script src="script.js"></script>

<div id="wrapper">
<div id="header">


<ul>
    <li><a href="logout.php" style="float:right;" class="button" role="button">LOG OUT</a></li>
	<li><a href="changepassword.php" style="float:right;" class="button" role="button">Change Password</a></li>
</ul>
<h1> <a href="../admin/adminloggedin.php" class="button" role="button">STUDENT MANAGEMENT SYSTEM</a> </h1>
</div>
<div class="menu" >

<ul>
	<li><a href="student.php" class="button" role="button"> STUDENT </a></li>
	<li><a href="course.php" class="button" role="button"> COURSE </a></li>
	
	<li> <strong style="float:right;">"Welcome <?php echo $_SESSION['username'];?>"  </strong></li>

</ul>
</div>
