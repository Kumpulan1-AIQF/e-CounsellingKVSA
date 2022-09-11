<?php
include 'conn.php';
session_start();
$nama = $_SESSION['Fullname'];
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>e-Counselling KVSA</title>

    <link href="css/jquery-ui.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
    <!-- Sticky navbar-->
    <header class="header sticky-top">
        <nav class="navbar navbar-expand-lg sticky-top navbar-light bg-white py-3 shadow-sm">
            <div class="container"><a class="navbar-brand" href="#home">
                    <img src="img/logo.png">
                    <strong class="h6 mb-0 font-weight-bold text-uppercase">e-Counselling KVSA</strong></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link" href="studentProfile.php">Profile |</a></li>
                        <li class="nav-item"><a class="nav-link" href="tempahan.php">Tempah |</a></li>
                        <li class="nav-item"><a class="nav-link" href="appointment.php">Session |</a></li>
                        <li class="nav-item"><a class="nav-link" href="logout.php">Log Keluar |</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <!-- Service -->
    <section>

        <div class="d-flex justify-content-center">

            <div class="card" style="width: 70rem;">

                <div id="tabs">
                    <ul class="text-center">
                        <li><a href="#tabs-1" style="color: white;" class="btn btn-info">IN-PROGRESS</a></li>
                        <li><a href="#tabs-2" style="color: white;" class="btn btn-warning">UPCOMING</a></li>
                        <li><a href="#tabs-3" style="color: white;" class="btn btn-success">COMPLETED</a></li>
                        <li><a href="#tabs-4" style="color: white;" class="btn btn-danger">CANCELED</a></li>
                    </ul>


                    <!-- Tabs1 -->
                    <div id="tabs-1">

                        <!-- Card Body -->
                        <div class="card-body">
                            <?php
                            $sql_progress = "SELECT * FROM tempahan WHERE Status = 'inProgress' AND Nama = '$nama'";
                            $query_progress = mysqli_query($mysqli, $sql_progress);
                            ?>
                            <?php
                            if (mysqli_num_rows($query_progress)) {
                            ?>
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Nama</th>
                                            <th scope="col">Kelas</th>
                                            <th scope="col">Servis</th>
                                            <th scope="col">Tarikh</th>
                                            <th scope="col">Masa</th>
                                            <th scope="col">Kaunselor</th>
                                            <th scope="col">Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        while ($rows = mysqli_fetch_array($query_progress)) {
                                        ?>
                                            <tr>
                                                <td><?php echo $rows['ID_Tempahan']; ?></td>
                                                <td><?php echo $rows['Nama']; ?></td>
                                                <td><?php echo $rows['Kelas']; ?></td>
                                                <td><?php echo $rows['Servis']; ?></td>
                                                <td><?php echo $rows['Tarikh']; ?></td>
                                                <td><?php echo $rows['Masa']; ?></td>
                                                <td><?php echo $rows['Kaunselor']; ?></td>
                                                <td class="btn btn-success"><?php echo $rows['status']; ?></td>
                                            </tr>
                                        <?php
                                        }
                                        ?>
                                    </tbody>
                                </table>
                            <?php
                            }
                            ?>

                            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                                <p class="p mb-0 text-gray-800 font-italic">*Sila tunggu respond dari Admin</p>
                            </div>
                        </div>
                    </div>

                    <!-- Tabs2 -->
                    <div id="tabs-2">
                        <!-- Card Body -->
                        <div class="card-body">
                            <?php
                            $sql = "SELECT * FROM tempahan WHERE status = 'Diterima' AND Nama = '$nama'";
                            $query = mysqli_query($mysqli, $sql);
                            ?>
                            <?php
                            if (mysqli_num_rows($query)) {
                            ?>
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Nama</th>
                                            <th scope="col">Kelas</th>
                                            <th scope="col">Servis</th>
                                            <th scope="col">Tarikh</th>
                                            <th scope="col">Masa</th>
                                            <th scope="col">Kaunselor</th>
                                            <th scope="col">Status</th>
                                            <th scope="col">Selesai</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php

                                        while ($row = mysqli_fetch_array($query)) {
                                        ?>
                                            <tr>

                                                <td><?php echo $row['ID_Tempahan']; ?></td>
                                                <td><?php echo $row['Nama']; ?></td>
                                                <td><?php echo $row['Kelas']; ?></td>
                                                <td><?php echo $row['Servis']; ?></td>
                                                <td><?php echo $row['Tarikh']; ?></td>
                                                <td><?php echo $row['Masa']; ?></td>
                                                <td><?php echo $row['Kaunselor']; ?></td>
                                                <td class="btn btn-success"><?php echo $row['status']; ?></td>
                                                <td><?php echo '<a href="pros_selesai.php?ID_Tempahan=' . $row['ID_Tempahan'] . '" class="btn btn-info" style="color:white;" onclick="return confirm(`Are you sure want to accept?`)">' . 'Selesai' . '</a>'; ?></td>
                                            </tr>
                                        <?php
                                        }
                                        ?>
                                    </tbody>
                                </table>
                            <?php
                            }
                            ?>

                            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                                <p class="p mb-0 text-gray-800 font-italic">*Hadirkan diri anda ke temujanji yang telah didaftar. Terima kasih</p>
                            </div>

                        </div>
                    </div>

                    <!-- Tabs3 -->
                    <div id="tabs-3">
                        <div class="card-body">
                            <?php
                            $sql_completed = "SELECT * FROM tempahan WHERE status = 'Selesai' AND Nama = '$nama'";
                            $query_completed = mysqli_query($mysqli, $sql_completed);
                            ?>
                            <?php
                            if (mysqli_num_rows($query_completed)) {
                            ?>
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Nama</th>
                                            <th scope="col">Kelas</th>
                                            <th scope="col">Servis</th>
                                            <th scope="col">Tarikh</th>
                                            <th scope="col">Masa</th>
                                            <th scope="col">Kaunselor</th>
                                            <th scope="col">Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        while ($row = mysqli_fetch_array($query_completed)) {
                                        ?>
                                            <tr>
                                                <td><?php echo $row['ID_Tempahan']; ?></td>
                                                <td><?php echo $row['Nama']; ?></td>
                                                <td><?php echo $row['Kelas']; ?></td>
                                                <td><?php echo $row['Servis']; ?></td>
                                                <td><?php echo $row['Tarikh']; ?></td>
                                                <td><?php echo $row['Masa']; ?></td>
                                                <td><?php echo $row['Kaunselor']; ?></td>
                                                <td class="btn btn-success"><?php echo $row['status']; ?></td>
                                            </tr>
                                        <?php
                                        }
                                        ?>
                                    </tbody>
                                </table>
                            <?php
                            }
                            ?>

                            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                                <p class="p mb-0 text-gray-800 font-italic">*Terima kasih kerana telah bertemu dengan kaunselor</p>
                            </div>
                        </div>
                    </div>

                    <!-- Tabs4 -->
                    <div id="tabs-4">

                        <!-- Card Body -->
                        <div class="card-body">
                            <?php
                            $sql_cancelled = "SELECT * FROM tempahan WHERE Status = 'Batal' AND Nama = '$nama'";
                            $query_cancelled = mysqli_query($mysqli, $sql_cancelled);
                            ?>
                            <?php
                            if (mysqli_num_rows($query_cancelled)) {
                            ?>
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Nama</th>
                                            <th scope="col">Kelas</th>
                                            <th scope="col">Servis</th>
                                            <th scope="col">Tarikh</th>
                                            <th scope="col">Masa</th>
                                            <th scope="col">Kaunselor</th>
                                            <th scope="col">Sebab</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        while ($row = mysqli_fetch_array($query_cancelled)) {
                                        ?>
                                            <tr>
                                                <td><?php echo $row['ID_Tempahan']; ?></td>
                                                <td><?php echo $row['Nama']; ?></td>
                                                <td><?php echo $row['Kelas']; ?></td>
                                                <td><?php echo $row['Servis']; ?></td>
                                                <td><?php echo $row['Tarikh']; ?></td>
                                                <td><?php echo $row['Masa']; ?></td>
                                                <td><?php echo $row['Kaunselor']; ?></td>
                                                <td class="btn btn-success"><?php echo $row['status']; ?></td>
                                            </tr>
                                        <?php
                                        }
                                        ?>
                                    </tbody>
                                </table>
                            <?php
                            }
                            ?>

                            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                                <p class="p mb-0 text-gray-800 font-italic">*Permohonan anda gagal, Sila daftar permohonan baharu</p>
                            </div>
                        </div>
                    </div>


                </div>

            </div>

    </section>


    <script src="js/jquery.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script>
        $("#tabs").tabs();
    </script>
</body>

</html>