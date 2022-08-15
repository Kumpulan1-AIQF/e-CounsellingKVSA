<?php
include "conn.php";

session_start();
if (isset($_POST['id_admin']) && ($_POST['psw'])) {
	function validate($data){
		$data = trim($data);
		$data = stripslashes($data);
		$data = htmlspecialchars($data);
		return $data;
	}

	$idAdmin = validate($_POST['id_admin']);
	$pass = validate($_POST['psw']);

	if (empty($idAdmin)) {
		header("Location:login_admin.php?error=ID Admin is required");
		exit();
	}else if(empty($pass)){
		header("Location:login_admin.php?error=Password is required");
		exit();
	}else{
		$sql = "SELECT * FROM admin WHERE ID='$idAdmin' && Password='$pass'";

		$result = mysqli_query($mysqli,$sql);

		if (mysqli_num_rows($result) === 1) {
			$row = mysqli_fetch_assoc($result);
			if ($row['ID'] === $idAdmin && $row['Password'] === $pass) {
				$_SESSION['ID'] = $row['ID'];
				$_SESSION['Nama'] = $row['Nama'];
				$_SESSION['Password'] = $row['Password'];
				header("Location:register.php");
			}
		}
			else{
				header("Location:login_admin.php?error=Incorrect ID User or Password");
				exit();
			
		}
	}
}

else{
	header("Location:login_admin.php");
	exit();
}
?>
