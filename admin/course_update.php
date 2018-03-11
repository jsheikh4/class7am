<?php
include("header.php");
?>

<?php
if(isset($_POST["submit"])) {
	$id= $_POST["id"];
	$course_name = $_POST["course_name"];
	$course_duration= $_POST["course_duration"];
	$course_fee= $_POST["course_fee"];
	$course_detail= $_POST["course_detail"];
	
	$sql = " update tbl_course set course_name='$course_name', course_duration='$course_duration', course_fee='$course_fee', course_detail='$course_detail'  where course_id='$id'";
	$result=mysql_query($sql,$con);
	echo "Course Record Updated.";
}

$course_id=$_GET["course_id"];
$sql=" select * from tbl_course where course_id='$course_id' ";
$result = mysql_query($sql,$con) or die(mysql_error());
while($row=mysql_fetch_array($result)) {
	$course_name = $row["course_name"];
	$course_duration= $row["course_duration"];
	$course_fee= $row["course_fee"];
	$course_detail= $row["course_detail"];
}


?>
<form name="course_update" id="course_update" action="" method="post" enctype="multipart/form-data">
<input type="hidden" name="id" value="<?php echo $course_id ?>" />
<table bgcolor="#FF9900" width ="60%" align="center">
<h2>COURSE EDIT FORM</h2>
	<tr>
		<td>Course</td>
		<td> <input type="text" name="course_name" id="course_name" value="<?php echo $course_name; ?>" /> </td>
	</tr>
	
	<tr>
		<td>Duration</td>
		<td> <input type="text" name="course_duration" id="course_duration" value="<?php echo $course_duration; ?>" /> </td>
	</tr>
	
	<tr>
		<td>Fee</td>
		<td> <input type="text" name="course_fee" id="course_fee" value="<?php echo $course_fee; ?>" /> </td>
	</tr>
	
	<tr>
		<td>Detail</td>
		<td> <input type="text" name="course_detail" id="course_detail" value="<?php echo $course_detail; ?>" /> </td>
	</tr>
	
	<tr>
		<td colspan="2"><input type="submit" name="submit" id="submit" value="Update"  /></td>
	</tr>
	
</table>

</form>
