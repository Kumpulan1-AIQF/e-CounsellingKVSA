<?php
include "conn.php";

session_start();
if (isset($_POST['id_kaunselor']) && ($_POST['psw'])) {
	function validate($data){
		$data = trim($data);
		$data = stripslashes($data);
		$data = htmlspecialchars($data);
		return $data;
	}

	$idKaunselor = validate($_POST['id_kaunselor']);
	$pass = validate($_POST['psw']);

	if (empty($idKaunselor)) {
		header("Location:login_kaunselor.php?error=ID is required");
		exit();
	}else if(empty($pass)){
		header("Location:login_kaunselor.php?error=Password is required");
		exit();
	}else{
		$sql = "SELECT * FROM kaunselor WHERE ID_Kaunselor='$idKaunselor' && Password='$pass'";

		$result = mysqli_query($mysqli,$sql);

		if (mysqli_num_rows($result) === 1) {
			$row = mysqli_fetch_assoc($result);
			if ($row['ID'] === $idAdmin && $row['Password'] === $pass) {
				$_SESSION['ID_Kaunselor'] = $row['ID_Kaunselor'];
				$_SESSION['Nama_Kauselor'] = $row['Nama'];
				$_SESSION['Password'] = $row['Password'];
				$_SESSION['Email'] = $row['email'];
				$_SESSION['noTel'] = $row['no_telefon'];
				header("Location:kaunselor-profile.php");
			}
		}
			else{
				header("Location:login_kaunselor.php?error=Incorrect ID User or Password");
				exit();
			
		}
	}
}

else{
	header("Location:login_kaunselor.php");
	exit();
}
?>
