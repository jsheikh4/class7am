<?php
include("header.php");
?>

<?php



$student_id=$_GET["student_id"];

$sql=" select * from tbl_student where student_id='$student_id' ";
$result = mysql_query($sql,$con) or die(mysql_error());
while($row=mysql_fetch_array($result)) {
	//$student_id=$_POST["student_id"];
	$student_name = $row["student_name"];
	$student_gender=$row["student_gender"];
	$course_id=$row["student_course"];
	$student_dob=$row["student_dob"];
	$student_phone=$row["student_phone"];
	$student_email= $row["student_email"];
	$student_guardian=$row["student_guardian"];
	$student_address=$row["student_address"];
	$student_image=$row["student_image"];
}

if(isset($_POST["submit"])) {
	$id= $_POST["id"];
	$student_name = $_POST["student_name"];
	$course_id= $_POST["course_id"];
	$student_gender= $_POST["student_gender"];
	$student_dob= $_POST["student_dob"];
	$student_phone= $_POST["student_phone"];
	$student_email= $_POST["student_email"];
	$student_address= $_POST["student_address"];
	$student_guardian= $_POST["student_guardian"];
	$image_mime_allowed = array('image/png','image/jpeg','image/jpg','image/bmp','image/gif'); 
	if($_FILES['image']['size']>0){
			$image_mime= $_FILES['image']['type'];
				if($_FILES['image']['error']== 0 && $_FILES['image']['size'] <= 4194304 && in_array($image_mime,$image_mime_allowed)){		
					$filename = $_FILES['image']['name'];
              	if (move_uploaded_file($_FILES['image']['tmp_name'],"../uploadimg/".$filename)) {
						unlink("../uploadimg/".$student_image);
					}
				}
			}
				else {
					$filename = $student_image;
				}
$img = $filename;	
	$sql = "UPDATE tbl_student set student_name='$student_name',student_image='$img' ,student_gender='$student_gender', student_course='$course_id', student_dob='$student_dob',student_phone='$student_phone', student_email='$student_email', student_address='$student_address',student_guardian='$student_guardian'  where student_id='$id'";/*You make mistake here student_address='student_address', , student_guardian='student_guardian' double comma*/
	$result=mysql_query($sql,$con);
	header("location:student.php?message=success");
}


?>
<form name="student_update" id="student_updte" action="" method="post" enctype="multipart/form-data">
<input type="hidden" name="id" value="<?php echo $student_id ?>" />
<table bgcolor="#FF9900" width ="60%" align="center">
<h2>STUDENT EDIT FORM</h2>
	<tr>
		<td>Name</td>
		<td> <input type="text" name="student_name" id="student_name" value="<?php echo $student_name; ?>" /> </td>
	</tr>
   
    <tr>
        <td>Gender</td>
	    <td> <input type="radio" name="student_gender" id="student_gender" value="Male"	<?php if ($student_gender == 'Male') {echo 'checked="checked"'; }?> />Male
	         <input type="radio" name="student_gender" id="student_gender" value="Female" <?php if ($student_gender == 'Female') {echo 'checked="checked"';} ?> />Female
	    </td> 
    </tr>
   
    <tr>
	<td>Image</td>
	<td><input type="file" name="image" id="image"/><img src="../uploadimg/<?php echo $student_image?>" width="50px" />
</td>
	
</tr>	
    
	<tr>
		<td>Course</td>
		<td><select name="course_id">
			<option value="<?php echo $course_id;?>"><?php echo $course_id;?> </option>
			<?php 
				$sql1="SELECT * FROM tbl_course order by course_id desc ";
				$result1 = mysql_query($sql1,$con) or die(mysql_error());
				while($row=mysql_fetch_array($result1)) {
				if(($row['course_name'])!= $course_id){
					?><option value="<?php echo $row['course_name']; ?>"><?php echo $row['course_name'];?> </option>
<?php			
			}
			}

			?>
		</select></td>
	</tr>

	<tr>
		<td>DoB(YYYY-MM-DD)</td>
		<td> <input type="text" name="student_dob" id="student_dob" value="<?php echo $student_dob; ?>" /> </td>
	</tr>
	
	<tr>
		<td>Phone</td>
		<td> <input type="text" name="student_phone" id="student_phone" value="<?php echo $student_phone; ?>" /> </td>
	</tr>
	
	<tr>
		<td>Email Address</td>
		<td> <input type="text" name="student_email" id="student_email" value="<?php echo $student_email; ?>" /> </td>
	</tr>
	
	<tr>
		<td>Guardian</td>
		<td> <input type="text" name="student_guardian" id="student_guardian" value="<?php echo $student_guardian; ?>" /> </td>
	</tr>
	
	<tr>
		<td>Address</td>
		<td> <input type="text" name="student_address" id="student_address" value="<?php echo $student_address; ?>" /> </td>
	</tr>
	
	
	<tr>
		<td colspan="2"><input type="submit" name="submit" id="submit" value="Update"  /></td>
	</tr>
	
</table>

</form>
