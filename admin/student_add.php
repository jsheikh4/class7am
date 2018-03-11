<?php
include("header.php");
?>


<?php
	
if (isset($_POST['submit']))
{
			$error="";
			$student_name=$_POST["student_name"] ;
			$student_gender=$_POST["student_gender"];
			$course_id=$_POST["course_id"] ;
			$student_dob=$_POST["student_dob"] ;
			$student_phone=$_POST["student_phone"] ;
			$student_email=$_POST["student_email"]; 
			$student_guardian=$_POST["student_guardian"] ;
			$student_address=$_POST["student_address"] ;																	
		
			if($student_name==""||$student_gender==""||$course_id==""||$student_dob==""||$student_phone==""||$student_email==""||$student_guardian=="" || $student_address=="")
				{
					$error.=" *You must fill all the fields <br/>" ;
				}
				
				
				if(is_numeric($student_name)) {
			$error.=" Only alphabets must be used for name <br> ";
			}
		
		if(!preg_match("/^[0-9]{10}$/",$student_phone)) {
			$error.="Invalid phone number <br> ";
			}
				
		if(!preg_match("/([\w\-]+\@[\w\-]+\.[\w\-]+)/",$student_email)){
		$error.="Invalid email format <br>";
		}
		//(preg_match, $a))
		if(!preg_match('/^((19|20)\\d\\d)-(0?[1-9]|1[012])-(0?[1-9]|[12][0-9]|3[01]\d)$/',$student_dob)){
		$error.="Invalid dob format <br>";
		}
				
				
				
				
	if ($error=="")
	{
		$student_image="";
		if(is_uploaded_file($_FILES['student_image']['tmp_name'])) {
			move_uploaded_file($_FILES['student_image']['tmp_name'], "../uploadimg/".$_FILES['student_image']['name']);
			$student_image=$_FILES['student_image']['name'];	
		}
		$sql= "Insert into tbl_student (student_name, student_gender, student_image, student_course, student_dob, student_phone, student_email, student_guardian, student_address) values ('$student_name', '$student_gender','$student_image', '$course_id', '$student_dob', '$student_phone', '$student_email', '$student_guardian', '$student_address') " ;
		$result=mysql_query($sql,$con) or die (mysql_error()) ;
		echo "New student has been added" ;
	}
	else
	{ 
	echo $error;
	}

}

?>
<link rel="stylesheet" href="../style.css"type="text/css" > 

<form name="student_add" id="student_add" action="student_add.php" method="post" enctype="multipart/form-data">
<table bgcolor="#FF9900" width ="60%" align="center">
<h2> Student Add Form</h2>
<br/>

<tr>
	<td > Name </td>
	<td> <input type="text" name="student_name" id="student_name" /> </td>
</tr>
<tr>
	<td>Gender</td>
	<td> <input type="radio" name="student_gender" id="student_gender" value="Male" /> Male
	     <input type="radio" name="student_gender" id="student_gender" value="Female" />Female
	</td> 
</tr>	

<tr>
	<td>Image</td>
	<td><input type="file" name="student_image" id="student_image"/></td>
</tr>	
<tr>
		<td>Course</td>
		<td><select name="course_id">
			<option value="">--SELECT--</option>
			<?php 
				$sql=" SELECT * FROM tbl_course order by course_id desc ";
				$result = mysql_query($sql,$con) or die(mysql_error());
				while($row=mysql_fetch_array($result)) {
					?><option value="<?php echo $row['course_name']; ?>"><?php echo $row['course_name'];?> </option>
<?php			
			}

			?>
		</select></td>
	</tr>


<!--<tr>
	<td > Course </td>
	<td> <input type="text"  name="student_course" id="student_course" />  </td>
</tr>-->	

<tr>
	<td> DoB(YYYY-MM-DD)</td>
	<td> <input type="text"  name="student_dob" id="student_dob" /> </td>
</tr>	

<td> Phone </td>
	<td> <input type="text" name="student_phone" id="student_phone" />  </td>
</tr>

<tr>
	<td> Email</td>
	<td> <input type="text" name="student_email" id="student_email" /></td>
</tr>	

<tr>
	<td> Guardian </td>
	<td> <input type="text"  name="student_guardian" id="student_guardian" />  </td>
</tr>	

<tr>
	<td> Address </td>
	<td><input typ="text" name="student_address" id="student_address" /></td>
</tr>	

<tr>
	<td>&nbsp;&nbsp;</td>
	<td>
		<input type="submit" name="submit"  id="submit" value="Add" /><br/>
        <input type="reset" name="reset" id="reset" value="Reset" /></td>
</tr>
</table>
</form>
