<?php
include 'conn.php';
$ID = $_GET['ID_Tempahan'];
$sql = "UPDATE tempahan SET status = 'Selesai' WHERE ID_Tempahan = '$ID'";

$query = mysqli_query($mysqli,$sql);

if($query){
	header("location:appointment.php");
}

else{
	header("location:appointment.php");
}
?>
