<?php include('header.php'); ?>
	
    <div class="container theme-showcase">
	<hr>
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
        <div class="col-sm-1">
        </div>
        <div class="col-sm-5">
            <div class="panel panel-primary">
                <div class="panel-heading">
                  <h3 class="panel-title">We make it fast and easy to create your survey</h3>
                </div>
                <div class="panel-body">
                    <div class="list-group">
                          <a href="" class="list-group-item">
                            <span class="container theme-showcase">
                                <img src='<?php echo BASE_URL; ?>static/assets/ico/ic_create.jpg' width="60" height="40">
                            </span>
                            Create the Questionaries
                          </a>
                          <a href="" class="list-group-item">
                            <span class="container theme-showcase">
                                <img src="<?php echo BASE_URL; ?>static/assets/ico/icon_collectors_large.jpg" alt="" width="60" height="40">
                            </span>
                            Share and Data Colleting
                            </a>
                          <a href="" class="list-group-item">
                            <span class="container theme-showcase">
                                <img src="<?php echo BASE_URL; ?>static/assets/ico/icon_analyze_large.jpg" alt="" width="60" height="40">
                            </span>
                            Analysing and Rreporting
                          </a>
                          <a href="" class="list-group-item">
                            <span class="container theme-showcase">
                                <img src="<?php echo BASE_URL; ?>static/assets/ico/ic_share.jpg" alt="" width="60" height="40">
                            </span>
                            Sharing with Social Network
                          </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="panel panel-primary">
                <div class="panel-heading">
                  <h3 class="panel-title">Sign Up</h3>
                </div>
                <div class="panel-body">
                    <form action="<?php echo BASE_URL; ?>main/sign_up" id="contact-form" class="form-horizontal" method="post">
                         <fieldset>
                            <legend>Create a new Account</legend>

                            <div class="controls">
                                <input type="text" placeholder="Name" class="form-control" name="name" required>
                                <input type="text" placeholder="Email" class="form-control" name="email" required>
                                <input type="password" class="form-control" placeholder="Choose Password" name="password" required>
                                <input type="password" class="form-control" placeholder="Retype Password" name="re-password" required>
                                <div class="radio">
                                  <label>
                                    <input type="radio" name="gender" id="optionsRadios1" value="male" checked>
                                    Male
                                  </label>
                                </div>
                                <div class="radio">
                                  <label>
                                    <input type="radio" name="gender" id="optionsRadios2" value="female">
                                    Female
                                  </label>
                                </div>
                                <hr>
                                <button type="submit" class="btn btn-primary btn-large">Submit</button>
                                <button type="reset" class="btn btn-primary btn-large">Cancel</button>
                            </div>
                        </fieldset>
                    </form>
                    <hr>
                        <p>D-Survey.com</p>
                    <hr>
                </div>
            </div>
        </div>
        <div class="row"><!-- /.col-sm-4 --><!-- /.col-sm-4 --><!-- /.col-sm-4 -->
        </div>
    </div>
</div><!-- /container -->

<?php include('footer.php'); ?>