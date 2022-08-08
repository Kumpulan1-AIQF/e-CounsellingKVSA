<?php
include "conn.php";

session_start();
if (isset($_POST['id_user']) && ($_POST['psw'])) {
	function validate($data){
		$data = trim($data);
		$data = stripslashes($data);
		$data = htmlspecialchars($data);
		return $data;
	}

	$idUser = validate($_POST['id_user']);
	$pass = validate($_POST['psw']);

	if (empty($idUser)) {
		header("Location:login.php?error=ID User is required");
		exit();
	}else if(empty($pass)){
		header("Location:login.php?error=Password is required");
		exit();
	}else{
		$sql = "SELECT * FROM pengguna WHERE ID_USER='$idUser' && Password='$pass'";

		$result = mysqli_query($mysqli,$sql);

		if (mysqli_num_rows($result) === 1) {
			$row = mysqli_fetch_assoc($result);
			echo "Bana";
			if ($row['ID_User'] === $idUser && $row['Password'] === $pass) {
				$_SESSION['ID_User'] = $row['ID_User'];
				$_SESSION['Fullname'] = $row['Fullname'];
				$_SESSION['Password'] = $row['Password'];
				header("Location:landingpage.php");
			}
		}
			else{
				header("Location:login.php?error=Incorrect ID User or Password");
				exit();
			
		}
	}
}

else{
	header("Location:login.php");
	exit();
}
?>
