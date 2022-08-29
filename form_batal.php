<?php
include "conn.php";
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>e-Counselling KVSA</title>
    <style type="text/css">
        #home{  
            background-color: #457B9D;
            color: #FFFFFF;
        }
    </style>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
    <!-- Sticky navbar-->
    <header class="header sticky-top">
        <nav class="navbar navbar-expand-lg sticky-top navbar-light bg-white py-3 shadow-sm">
            <div class="container"><a class="navbar-brand" href="#home">
                    <img src="img/logo.png">
                    <strong class="h6 mb-0 font-weight-bold text-uppercase">e-Counselling KVSA</strong></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                       <li class="nav-item"><a class="nav-link" href="studentProfile.php">Profile |</a></li>
                    <li class="nav-item"><a class="nav-link" href="tempahan.php">Tempah |</a></li>
                    <li class="nav-item"><a class="nav-link" href="appointment.php">Session |</a></li>
                    <li class="nav-item"><a class="nav-link" href="log_keluar.php">Log Keluar |</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <!-- Heading -->
    <section class="py-8 section-1" id="home">
        <div class="container">
            <div class="hero-h2">
                <h2>BOOK YOUR SESSION WITH US !</h2>
            </div>
        </div>
    </section>

    <!-- Service -->
    <section>
        <form action="pros_batal.php" method="POST">
        <div class="d-flex justify-content-center">
            <?php
            $id = $_GET['ID_Tempahan'];
            ?>
            <div class="card" style="width: 40rem;">
                <div class="card-body">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroup-sizing-default">ID-Tempahan</span>
                        </div>
                        <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="ID_Tempahan" value="<?php echo $id ?>" readonly>
                    </div> 

                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroup-sizing-default">Sebab</span>
                        </div>
                        <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="sebab">
                    </div> 
                    <input type="submit" class="form-control btn btn-success" aria-label="Default" aria-describedby="inputGroup-sizing-default">

                </div>
            </div>

        </div>
    </form>
    </section>

</body>
    
</html>
