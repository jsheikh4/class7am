<?php
include("header.php");
?>

<?php
include("menu.php")
?>
<div id=wrapper>
<div class=main>
<h2 align="center"> Student Detail </h2>
<?php
	
		
	$i=0;
	$sql= "select * from tbl_student";
	$result=mysql_query($sql,$con) or die (mysql_error());
	if(mysql_num_rows($result) > 0){
	
	echo "<table border ='1' width=100%>";
	echo "<tr>";
		echo "<th>S.No</th>";
		echo "<th>Name</th>";
		echo "<th>Gender</th>";
		echo "<th>Image</th>";
		echo "<th>Course</th>";
		echo "<th>DoB</th>";
		echo "<th>Phone</th>";
		echo "<th>Email</th>";
		echo "<th>Guardian</th>";
		echo "<th>Address</th>";
		echo"</tr>";
	while($row = mysql_fetch_array($result)){
                $i++;
		{
		echo"<tr>";
		echo"<td width='30' height='5'>$i </td>";
		echo"<td >".$row['student_name']."</td>";
		echo"<td >".$row['student_gender']."</td>";
		echo"<td> <img width='60' height='50' src='uploadimg/".$row['student_image']."'> </td>";
		echo"<td>".$row['student_course']."</td>";
		echo"<td>".$row['student_dob']."</td>";
		echo"<td>".$row['student_phone']."</td>";
		echo"<td>".$row['student_email']."</td>";
		echo"<td>".$row['student_guardian']."</td>";
		echo"<td>".$row['student_address']."</td>";
		
		echo"</tr>";	
		}
		}
		}
		echo"</table>";
			
?>

<div>

<?php
include("footer.php");  
?>