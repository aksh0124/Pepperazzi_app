<?php  

	ini_set("display_errors","ON");
	include 'connect.php';

	$TBname=$_REQUEST['cuisinename'];
	$CTname=$_REQUEST['categoryname'];	

	//header('Content-type:application/json');

	$query = "SELECT item_name FROM $TBname where item_type =  '$CTname' " ;

	$result = mysqli_query($con, $query);

	$posts = array();

	while($rows= mysqli_fetch_assoc($result))
	{  
            $posts[]= $rows; 
	}
        echo json_encode($posts); 
      
	//header('Content-type: application/json');
           
?>