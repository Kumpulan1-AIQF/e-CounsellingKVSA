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
            margin-top: 70px;
            border: 2px solid darkgrey;
            border-radius: 8px;
            padding: 40px;
            padding-bottom: 20px;
            width: 700px;
            height: 400px;
            font-family: sans-serif; 
        }
        .tick {
            margin-top: 12px;
            margin-bottom: 22px;
        }
        .button {
             margin-top: 20px;
             background-color: #80dfff;
             color: black;
             border: 2px solid #007399;
             border-radius: 5px;
             padding: 15px;
             margin-left: 6px;
             margin-right: 6px;
        }

        .button:hover {
            background-color: #1ac6ff;
            color: black;
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

<center>
    <div class="mborder">
        <h4>Booking Confirmed</h4>
        <img class="tick" src="img\tick.png" width="80" height="80">
        <h5>Terima kasih kerana menempah!</h5>
        <h5>Sila tunggu tindakan selanjutnya</h5>
        <a href="appointment.php"><button class="button">Semak</button></a>
        <a href="studentProfile.php"><button class="button">Kembali</button></a>
    </div>
</center>
</body>
</html>
