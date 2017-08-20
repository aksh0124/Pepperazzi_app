<?php
	$connect=mysqli_connect("108.179.246.15","anantq9e_Jigar","9638544455","anantq9e_paparazzi");
	if (mysqli_connect_errno())
	{
 	 	echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
	$sql = "SELECT item_name FROM" $tablename "WHERE item_category" = $categoryname;
	if ($result = mysqli_query($connect, $sql))
	{
	// If so, then create a results array and a temporary one
	// to hold the data
		$resultArray = array();
		$tempArray = array();

		while($row = $result->fetch_object())
		{
		// Add each row into our results array
			$tempArray = $row;
	    	array_push($resultArray, $tempArray);
		}
		echo json_encode($resultArray);
	}
	mysqli_close($connect);
?>	
