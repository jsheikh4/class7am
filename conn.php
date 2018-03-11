 
<?php
// this is the package for connection and selection of database
session_start();
$con=mysql_connect("localhost","root","");
	if (!$con) 
		{
		echo "Database connection failed..!!!"; exit;
		}
$select=mysql_select_db('student');
	if (!$select)
		{echo "Database selection failed...!!!"; exit;
		}	
?>