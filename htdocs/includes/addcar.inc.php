<?php
	include_once  'dbh.inc.php';	// connecting to the database using the script 

$carid = $_POST['carid'];
$cartype = $_POST['cartype'];
$model = $_POST['model'];
$year = $_POST['year'];
$Wrate = $_POST['Wrate'];
$Drate = $_POST['Drate'];


$sql = "INSERT INTO car (VehicleId, CarType, model, year, WeeklyRate, DailyRate) VALUES ($carid, '$cartype', '$model', $year, $Wrate, $Drate);";
$result = mysqli_query($conn, $sql);

header("Location: /car.php");
//INSERT INTO car (VehicleId, CarType, model, year, WeeklyRate, DailyRate) VALUES (100, "VAN", "Toyota", 1998, 199.99, 19.99);
