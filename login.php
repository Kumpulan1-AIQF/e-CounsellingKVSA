<?php
include "conn.php";
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>e-Counselling KVSA</title>

    <link rel="stylesheet" href=" https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <link rel="stylesheet" type="text/css" href="css/login.css">
</head>

<header class="header sticky-top">
    <nav class="navbar navbar-expand-lg navbar-light bg-white py-3 shadow-sm">
        <div class="container"><a class="navbar-brand" href="#home">
            <img src="img/logo.png">
            <strong class="h6 mb-0 font-weight-bold text-uppercase">e-Counselling KVSA</strong></a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"><a class="nav-link" href="index.php">Home |<span class="sr-only">(current)</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="login.php">Session |</a></li>
                    <li class="nav-item"><a class="nav-link" href="#event">Event |</a></li>
                    <li class="nav-item"><a class="nav-link" href="#service">Service |</a></li>
                    <li class="nav-item"><a class="nav-link" href="#aboutus">About us |</a></li>
                    <li class="nav-item"><a class="nav-link" href="#contactus">Contact us |</a></li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<body>
    <div class="container px-4 py-5 mx-auto">
        <div class="card card0">
            <div class="d-flex flex-lg-row flex-column-reverse">
                <div class="card card1">
                    <div class="row justify-content-center my-auto">
                        <div class="col-md-8 col-10 my-5">
                            <h3 class="mb-5 text-center heading">E-Counseling</h3>

                            <h6 class="msg-info" style="text-align: center;">Log in</h6>
                            <form action="process-login.php" method="POST">
                                <?php if(isset($_GET['error'])) { ?>
                                <p class="error"><?php echo $_GET['error']; ?></p>
                              <?php  }?>
                            <div class="form-group">
                                <label class="form-control-label ">ID User</label>
                                <input type="text" id="text" name="id_user" placeholder="" class="form-control">
                            </div>

                            <div class="form-group">
                                <label class="form-control-label">Password</label>
                                <input type="password" id="psw" name="psw" placeholder="" class="form-control">
                            </div>

                            <div class="row justify-content-center my-3 px-3">
                                <button class="btn-block btn-color">Login to Session</button>
                            </div>
                        </form>
                        </div>
                    </div>
                </div>
                <div class="card card2">
                    <div class="my-auto mx-md-5 px-md-5 right">
                        <div class="row justify-content-center px-3 mb-3">
                                <img id="logo" src="img\logo.png"><h3>E-Counseling</h3>
                            </div>
                        <h3 class="text-white text-center">“We must be taught how to think, not what to think”</h3>

                        <div class="help"><h3 class="text-white text-center">Need Our Help?</h3></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
