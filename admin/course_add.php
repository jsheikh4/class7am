<?php
include("header.php");
?>

<form name="course_add" id="course_add" action="" method="post" enctype="multipart/form-data">
<table bgcolor="#FF9900" width ="60%" align="center">
<h2> Course Add Form</h2>

<br/>
<tr>
	<td> Course Name </td>
	<td> <input type="text" name="course_name" id="course_name"/> </td>
</tr>

<tr>
	<td> Course Duration</td>
	<td> <input type="text" name="course_duration" id="course_duration"/></td>
</tr>	

<tr>
	<td>Course Fee</td>
	<td><input typ="text" name="course_fee" id="course_fee"/></td>
</tr>	

<tr>
	<td> Course Detail </td>
	<td><textarea  name="course_detail" cols="30" rows="3" id="course_detail" ></textarea></td>
</tr>	

<tr>
	<td>&nbsp;&nbsp;</td>
	<td>
		<input type="submit" name="submit" id="submit" value="Add" />
	    <input type="reset" name="reset" id="reset" value="Reset" />	</td>
</tr>
</table>
</form>


<?php 
	if (isset($_POST['submit']))
		{
			$error="" ;
			$course_name=$_POST["course_name"] ;
			$course_duration=$_POST["course_duration"] ;
			$course_fee=$_POST["course_fee"] ;
			$course_detail=$_POST["course_detail"] ;
		
			if($course_name==""||$course_duration==""||$course_fee==""||$course_detail=="")
				{
					$error.="You must fill all the fields <br/>" ;
				}
			 
			if ($error=="")
				{
					$sql= "Insert into tbl_course (course_name, course_duration, course_fee, course_detail) values ('$course_name', '$course_duration', '$course_fee', '$course_detail') " ;
					$result=mysql_query($sql,$con) or die (mysql_error()) ;
					echo "New course has been added into your course list" ;
				}
		else
		{
			echo $error ;
		}
		}
?>
