<?php
include 'conn.php';

$ID = $_POST['ID_Tempahan'];
$sebab = $_POST['sebab'];
$sql = "UPDATE tempahan SET sebab = '$sebab',status = 'Batal' WHERE ID_Tempahan = '$ID'";
$query = mysqli_query($mysqli,$sql);

if ($sql) {
	header('location:jadual.php');
}
else{
	header('location:jadual.php');
}
?>
