<?php
include 'conn.php';
$ID = $_POST['ID'];
$masa = $_POST['masa'];
$tarikh = $_POST['tarikh'];
$kaunselor = $_POST['kaunselor'];
$sql = "UPDATE tempahan SET status = 'Diterima',Masa = '$masa',Tarikh = '$tarikh',Kaunselor = '$kaunselor' WHERE ID_Tempahan = '$ID'";

$query = mysqli_query($mysqli,$sql);
header("location:jadual.php");
?>
