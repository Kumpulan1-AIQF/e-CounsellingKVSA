<?php
include 'conn.php';

$nama = $_POST['nama'];
$kelas = $_POST['kelas'];
$servis = $_POST['servis'];
$tarikh = $_POST['tarikh'];
$masa = $_POST['masa'];
$kaunselor = $_POST['kaunselor'];
$query =
 "INSERT INTO tempahan (Nama,Kelas,Servis,Tarikh,Masa,Kaunselor,status)VALUES ('$nama','$kelas','$servis','$tarikh','$masa','$kaunselor','inProgress')";

$sql = mysqli_query($mysqli,$query);

if ($sql) {
	header('location:confirmpage.php');
}
else{
	header('location:errorpage.php');
}
?>
