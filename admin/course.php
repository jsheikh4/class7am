<?php
include("header.php");
?>
<h2 align="center"> Course Detail </h2>
<div style ="text-align:right">
<a href="course_add.php" ><h3> Add New Course</h3></a>
</div>
<?php

	if (isset($_GET["mode"]))
		{
			$mode=$_GET["mode"];
				if ($mode=="delete")
					{
						$course_id=$_GET["course_id"];
						$sql= "delete from tbl_course where course_id= '$course_id' " ;
				 		$result=mysql_query($sql,$con) or die (mysql_error()) ;
					}	
		}
$i=0;
$sql= "select * from tbl_course ";
$result= mysql_query($sql,$con) or die (mysql_error());
if(mysql_num_rows($result) > 0){

            

echo "<table border='1' width=100%> " ;
echo "<tr>";	
	echo"<th>S.No</th>" ;  
	echo"<th>Course Name</th>" ;
	echo"<th>Course Duration</th>" ;
	echo"<th>Course Fee</th>" ;
	echo"<th>Course Detail</th>" ;
	echo"<th>Action</th>" ;
echo "</tr>" ;

while($row = mysql_fetch_array($result)){
                $i++;
	{
		echo"<tr>";
		echo"<td>$i</td>" ;
		echo"<td>" .$row['course_name']."</td>" ;
		echo"<td>" .$row['course_duration']."</td>" ;
		echo"<td>" .$row['course_fee']."</td>" ;
		echo"<td>" .$row['course_detail']."</td>" ;
		  	
		echo"<td> <a href='course_update.php?course_id=".$row['course_id']."' > Edit </a>&nbsp;&nbsp;&nbsp;<a href='course.php?mode=delete&course_id=".$row['course_id']."' onclick=\"return DeleteMe(this)\">Delete</a> </td>" ;
		echo"</tr>" ;
	}
	}
	}
echo"</table>";
?>


