<?php
include("header.php");
?>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr{background-color: #f2f2f2}

th {
    background-color: brown;
    color: white;
}
</style>

<h2 align="center"> Student Detail </h2>
<h1 align="center">Search</h1>
    <div class="search-form">
      <form action="" method="get">
        <div class="form-field" align="center">
          <label for="search-field" >Search</label>
          <input type="search" name="searchkey" placeholder="Enter your search keyword..." results="5">
          <input type="submit" value="Search"><input type="submit" value="View All">
        </div>
      </form>
    <br/><br/>
<?php
							/********************************************************************************************************/
							/**************************** PROJECTARY SEARCH CODE FOR TYPED KEYWORD **********************************/
							/********************************************************************************************************/
							// Connect to database server
							mysql_connect("localhost", "root", "") or die (mysql_error ());

							// Select database
							mysql_select_db("student") or die(mysql_error());

							// SQL query
							if($_GET){
								$searchkey=$_GET['searchkey'];
								$strSQL = "SELECT * FROM tbl_student where student_name like '%$searchkey%'";

							// Execute the query (the recordset $rs contains the result)
							$rs = mysql_query($strSQL);
							if(mysql_num_rows($rs)==0){
									echo "<script type='text/javascript'>alert('Sorry, no match found. Try with another keyword? ');</script>";
							}
							else{
								echo "<center><table><tr><th>S.No</th><th>Name</th><th>Gender</th><th>Image</th><th>Course</th><th>DoB</th><th>Phone</th><th>Email</th><th>Guardian</th><th>Address</th><th>Action</th></tr>";

							
							// Loop the recordset $rs
							// Each row will be made into an array ($row) using mysql_fetch_array
							while($row = mysql_fetch_array($rs)) {
								

							   // Write the value of the column FirstName (which is now in the array $row)
								$studentid=$row['student_id'];
								$studentname=$row['student_name'];
								$studentgender=$row['student_gender'];
								$studentimage=$row['student_image'];
								$studentcourse=$row['student_course'];
								$studentphone=$row['student_phone'];
								$studentdob=$row['student_dob'];
								$studentemail=$row['student_email'];
								$studentguardian=$row['student_guardian'];
								$studentaddress=$row['student_address'];
								echo "<tr><td>". $studentid."</td>";
								echo "<td>". $studentname."</td>";
								echo "<td>". $studentgender."</td>";
								echo"<td> <img width='60' height='50' src='uploadimg/".$row['student_image']."'> </td>";
								echo "<td>". $studentcourse."</td>";
								echo "<td>". $studentdob."</td>";
								echo "<td>". $studentphone."</td>";
								
								echo "<td>". $studentemail."</td>";
								echo "<td>". $studentguardian."</td>";
			
								echo "<td>".$studentaddress."</td>";
								echo"<td><a href='student_update.php?student_id=".$row['student_id']."'> Edit </a>&nbsp;&nbsp;&nbsp;<a href='student.php?mode=delete&student_id=".$row['student_id']."' onclick=\"return DeleteMe(this)\">Delete </a> </td></tr>" ;
		echo"</tr>";	
								
						
								
							
							  }
							
							}
								echo "</table></center>";
							}
							
							// Close the database connection
							mysql_close();
							
							
?>

<a href="student_add.php" ><h3> Add Student</h3></a>
