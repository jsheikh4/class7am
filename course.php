<?php
include("header.php");
?>

<?php
include("menu.php")
?>
<div id=wrapper>
<div class=main>
<h2 align="center"> Course Detail </h2>
<?php
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
echo "</tr>" ;

while($row = mysql_fetch_array($result)){
                $i++;
	{
		echo"<tr>";
		echo"<td width='30' height='5'>$i </td>"  ;
		echo"<td>" .$row['course_name']."</td>" ;
		echo"<td>" .$row['course_duration']."</td>" ;
		echo"<td>" .$row['course_fee']."</td>" ;
		echo"<td>" .$row['course_detail']."</td>" ;
		  	
	}
	}
	}
echo"</table>";

?>

<?php
include("footer.php");  
?>