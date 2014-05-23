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
    <style>
      .navbar-inverse{
          background-color: #2b669a;
      }
      .well{
          background-color: #2b669a;
      }
    </style>

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
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><i class="glyphicon glyphicon-user"></i><?php echo " ".$_SESSION['username'];?></a></li>
            <li><a href="#"><i class="glyphicon glyphicon-comment"></i><span class="badge btn-danger active">10</span></a></li>
            <li><a href="#"><i class="glyphicon glyphicon-globe"></i><span class="badge btn-danger active">5</span></a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">|<b class="caret"></b></a>
              <ul class="dropdown-menu navbar-inverse">
                <li><a href="#"><i class="glyphicon glyphicon-road"></i> My Survey</a></li>
                <li><a href="#"><i class="glyphicon glyphicon-cog"></i> Account Settings</a></li>
                <li><a href="/main/logout"><i class="glyphicon glyphicon-off"></i> Log Out</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.navbar-collapse -->

      </div>
    </div>