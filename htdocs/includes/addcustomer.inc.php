<?php
	include_once  'dbh.inc.php';	// connecting to the database using the script 

$idno = $_POST['idno'];
$finitial = $_POST['finitial'];
$lname = $_POST['lname'];
$phone = $_POST['phone'];


$sql = "INSERT INTO customer (IdNo, firstInitial, lastName, phone) VALUES ($idno, '$finitial', '$lname', '$phone');";
$result = mysqli_query($conn, $sql);

header("Location: /customer.php");
//INSERT INTO car (VehicleId, CarType, model, year, WeeklyRate, DailyRate) VALUES (100, "VAN", "Toyota", 1998, 199.99, 19.99);
