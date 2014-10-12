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
    <link rel="shortcut icon" href="/static/assets/ico/ic_launcher.png">

    <title>Survey Management System </title>

    <!-- Bootstrap core CSS -->
    <link href="/static/assets/css/bootstrap.min.css" rel="stylesheet">

    <link href="/static/assets/css/survey.css" rel="stylesheet">

    <!-- Editable fields CSS -->
    <link href="/static/assets/css/bootstrap-editable.css" rel="stylesheet">
    <style>
      .navbar-inverse {
          background-color: #007196;
      }
      .well {
          background-color: #007196;
      }

      .btn {
          text-align: left;
      }

      .nav-info {
            background-color: #007196;
      }
      .editable-click, a.editable-click, a.editable-click:hover {
          border-bottom: none;
      }

      .form-horizontal .editable {
          padding-top: 0px;
      }

      input, button, select, textarea {
          line-height: normal;
      }
      .popover-title{
        color: #007196;
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
          <a class="navbar-brand" href="/main"><i class="glyphicon glyphicon-home"></i> D-Survey</a>
          <?php
          if (!isset($_SESSION['role'])){
              $_SESSION['role'] = "";
          }

          if (!isset($_SESSION['name'])){
              $_SESSION['name'] = "";
          }

            if(strtolower($_SESSION['role'])=="admin"){
              echo '<a class="navbar-brand" href="/user"> User</a>';
              echo '<a class="navbar-brand" href="/user/audit"> User Activity</a>';
            }
          ?>
        </div>

        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="/main/profileView"><i class="profileName glyphicon glyphicon-user"></i><?php echo " ".$_SESSION['name'];?></a></li>
            <li><a href="#"><div class="comment" id="messageLink"><i class="glyphicon glyphicon-comment"></i><span id="message_li" class="comment_count badge btn-danger active">10</span></div></a>
                <div id="messageContainer">
                    <div id="messageTitle">Inbox</div>
                    <div id="messageBody" class="notifications"></div>
                    <div id="messageFooter"><a href="#">See All</a></div>
                </div>
            </li>
            <li><a href="#"><div class="notification" id="notificationLink"><i class="glyphicon glyphicon-globe"></i><span id="notification_li" class="notification_count badge btn-danger active">5</span></div></a>
                <div id="notificationContainer">
                    <div id="notificationTitle">Notifications</div>
                    <div id="notificationsBody" class="notifications"></div>
                    <div id="notificationFooter"><a href="#">See All</a></div>
                </div>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-cog"></i></a>
              <ul class="dropdown-menu navbar-inverse">
                <li><a href="/survey"><i class="glyphicon glyphicon-tasks"></i> Create Survey</a></li>
                <li><a href="/survey/mySurveyView"><i class="glyphicon glyphicon-road"></i> My Survey</a></li>
                <li><a href="/cloud"><i class="glyphicon glyphicon-cloud"></i> D-Drive </a></li>
                <li><a href="/mobile"><i class="glyphicon glyphicon-phone"></i> Mobile Upload</a></li>
                <li><a href="#"><i class="glyphicon glyphicon-cog"></i> Account Settings</a></li>
                <li><a href="/main/logout"><i class="glyphicon glyphicon-off"></i> Log Out</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.navbar-collapse -->

      </div>
    </div>

<script type="text/javascript" src="/static/assets/jquery/dist/jquery.js"></script>
<script type="text/javascript" >
    $(document).ready(function(){
        $("#notificationLink").click(function(){
            $("#notificationContainer").fadeToggle(300);
            $("#notification_count").fadeOut("slow");
              console.log("Hi am here");
              $.ajax({
                url:"survey/notificationView",
                success:function(result){
                $("#notificationsBody").html(result);
              }});
            return false;
        });

        //Document Click hiding the popup
        $(document).click(function(){
            $("#notificationContainer").hide();
        });

        /*//Popup on click
        $("#notificationContainer").click(function(){
            return false;
        });*/

        $("#messageLink").click(function(){
            $("#messageContainer").fadeToggle(300);
            $("#message_count").fadeOut("slow");
            return false;
        });

        //Document Click hiding the popup
        $(document).click(function(){
            $("#messageContainer").hide();
        });

        //Popup on click
        $("#messageContainer").click(function(){
            return false;
        });

    });
</script>
