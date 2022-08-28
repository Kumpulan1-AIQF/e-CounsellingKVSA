<?php
include 'conn.php';
$id = $_GET['ID_Tempahan'];
$sql = "UPDATE tempahan SET status = 'Diterima',sebab = '' WHERE ID_Tempahan = '$id'";

$query = mysqli_query($mysqli,$sql);

if ($query) {
	header('location:jadual.php');
}
else{
	echo "gagal";
}
?>
