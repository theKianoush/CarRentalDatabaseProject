<?php
	include_once 'includes/dbh.inc.php';
?>

<!DOCTYPE html>
<html>
<head>
	<title>cars</title>
</head>
<body>
<u>
<h1>View and Add cars to the Database</h1>
</u>

<a href="index.php">
<h3>Click Here to return to the HomePage</h3>
</a>


<img src="carspic.jpg" alt="car picture" width="900" height="600">
<br>
----------------------------------------------------------------------------------
<u>
<h4>Insert new car into the Database</h4>
</u>
<form action="includes/addcar.inc.php" method="post">

Vehicle Id: <input type = "number" name = "carid" />
<br>
Car Type: <select name = "cartype" />
<option>COMPACT</option>
<option>MEDIUM</option>
<option>LARGE</option>
<option>SUV</option>
<option>TRUCK</option>
<option>VAN</option>
</select>

<br>
Model: <input type = "text" name = "model" />
<br>
Year: <input type = "number" name = "year" />
<br>
Weekly Rate: <input type = "number" name = "Wrate" />
<br>
Daily Rate: <input type = "number" name = "Drate" />
<br>
<button type="submit" name="submit">Add Car</button>




</form>

<br>
----------------------------------------------------------------------------------
<br>
<u>
<h4>Cars in Database</h4>
</u>
VehicleId | CarType | model | year | WeeklyRate | DailyRate	
<br>
<br>
<?php
	$sql = "SELECT * FROM car";
	$result = mysqli_query($conn, $sql);
	$resultCheck = mysqli_num_rows($result);
	
	if ($resultCheck > 0) {
		while ($row = mysqli_fetch_assoc($result)) {
			
			echo "| " . $row['VehicleId'] . " | " . $row['CarType'] . " | " . $row['model'] . " | " . $row['year'] . " | $" . $row['WeeklyRate'] . " | $" . $row['DailyRate'] . "<br>";
		}
		
		
	}

?>


</body>
</html>
