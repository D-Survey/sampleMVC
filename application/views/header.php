<?php
  //include '/application/controllers/main.php';
?>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="Thanushan" content="">
    <link rel="shortcut icon" href="<?php echo BASE_URL; ?>static/assets/ico/ic_launcher.png">

    <title>Survey Management System </title>

    <!-- Bootstrap core CSS -->
    <link href="<?php echo BASE_URL; ?>static/assets/css/bootstrap.min.css" rel="stylesheet">

  </head>

  <body>

    <!-- Fixed navbar -->
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">

        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><i class="glyphicon glyphicon-home"></i> D-Survey</a>
        </div>

        <div class="navbar-collapse collapse">
          <form class="navbar-form navbar-right" role="form" action="../main/login" method="post">
            <div class="form-group">
              <input type="text" placeholder="Username" name="username" class="form-control" required>
            </div>
            <div class="form-group">
              <input type="password" placeholder="Password" name="password" class="form-control" required>
            </div>
            <button type="submit" value="Login" name="login" class="btn btn-success">Sign in</button>
          </form>
        </div><!--/.navbar-collapse -->

      </div>
    </div>