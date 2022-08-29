<?php
include 'conn.php';
session_start();
?>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>e-Counselling KVSA</title>
    <style type="text/css">
        .section-1 {
            background: #f5f5f5;
        }

        .section-2 {
            background: #F1F1F1;
        }

        .mborder {
            margin-top: 52px;
            margin-left: 333px;
            border: 2px solid #0059b3;
            border-radius: 8px;
            padding-top: 40px;
            padding-bottom: 30px;
            padding-left: 55px;
            width: 700px;
            height: 400px;
            font-family: sans-serif;
            background-image: linear-gradient(to bottom right, #00ace6, #ccf2ff);
        }

        .title {
            color: white;
            font-weight: bold;
            border: 2px solid #0059b3;
            border-radius: 12px;
            padding-top: 6px;
            padding-bottom: 6px;
            padding-left: 30px;
            width: 170px;
            background-color: #1a8cff;
        }

        .student {
            margin-top: 12px;
            margin-left: 8px;
            border: 3px solid #0059b3;
            border-radius: 80px;
            width: 155px;
            height: 156px;
        }

        .info {
            background-color: #1a8cff;  
            border: 2px solid #0059b3;
            width: 300px;
            height: 172px;
            border-radius: 12px;
            margin-top: 35px;
            margin-right: 55px;
            padding-left: 24px;
            padding-top: 18px;
            float: right;
        }

        .font {
            font-family: sans-serif;
            font-weight: bold;
            color: white;
        }

        .button {
             margin-top: 80px;
             background-color: #80dfff;
             color: black;
             border: 2px solid #007399;
             border-radius: 5px;
             padding-left: 30px;
             padding-right: 30px;
             padding-top: 10px;
             padding-bottom: 10px;
             margin-left: 234px;
             margin-right: 6px;
        }

        .button:hover {
            background-color: #3399ff;
            color: white;
        }

    </style>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>

<!-- Sticky navbar-->
<header class="header sticky-top">
    <nav class="navbar navbar-expand-lg navbar-light bg-white py-3 shadow-sm">
        <div class="container"><a class="navbar-brand" href="#home">
            <img src="img\logo.png">
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

    <div class="mborder">
        <h6 class="title"><?php echo $_SESSION['Fullname'];?> Profile</h6>
        <img class="student" src="img/profilepic.png">
        <content class="info">
            <h6 class="font">NAMA : <?php echo $_SESSION['Fullname'];?></h6>
            <h6 class="font">KELAS : <?php echo $_SESSION['Kelas'];?></h6>
            <h6 class="font">NO IC : <?php echo $_SESSION['IC'];?>
            <h6 class="font">KOHORT : <?php echo $_SESSION['Kohort'];?></h6> 
        </content>
        <a href="tempahan.php"><button>Tempah Sesi Kaunseling</button></a>
        <a href="appointment.php"><button>Lihat Jadual</button></a>
    </div>

</body>
</html>
