<?php
	include_once 'includes/dbh.inc.php';
?>

<!DOCTYPE html>
<html>
<head>
	<title>customers</title>
</head>
<body>
<u>
<h1>View and Add customers to the Database</h1>
</u>


<a href="index.php">
<h3>Click Here to return to the HomePage</h3>
</a>

<img src="customerpic.jpg" alt="customer picture">
<br>
----------------------------------------------------------------------------------
<u>
<h4>Insert new car into the Database</h4>
</u>
<form action="includes/addcustomer.inc.php" method="post">

Id Number: <input type = "number" name = "idno" />
<br>
First Intial: <input type = "text" name = "finitial" placeholder="x."/>
<br>
Last Name: <input type = "text" name = "lname" />
<br>
Phone Number: <input type = "text" name = "phone" placeholder = "xxx-xxx-xxxx"/>
<br>
<button type="submit" name="submit">Add Customer</button>




</form>

<br>
----------------------------------------------------------------------------------
<br>
<u>
<h4>Customers in Database</h4>
</u>
| IdNo | firstInitial | lastName | phone |
<br>
<br>
<?php
	$sql = "SELECT * FROM customer";
	$result = mysqli_query($conn, $sql);
	$resultCheck = mysqli_num_rows($result);
	
	if ($resultCheck > 0) {
		while ($row = mysqli_fetch_assoc($result)) {
			
			echo "| " . $row['IdNo'] . " | " . $row['firstInitial'] . " | " . $row['lastName'] . " | " . $row['phone'] . "<br>";
		}
		
		
	}

?>


</body>
</html>
