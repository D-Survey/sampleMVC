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
                                <img src='/static/assets/ico/ic_create.jpg' width="60" height="40">
                            </span>
                            Create the Questionaries
                          </a>
                          <a href="" class="list-group-item">
                            <span class="container theme-showcase">
                                <img src="/static/assets/ico/icon_collectors_large.jpg" alt="" width="60" height="40">
                            </span>
                            Share and Data Colleting
                            </a>
                          <a href="" class="list-group-item">
                            <span class="container theme-showcase">
                                <img src="/static/assets/ico/icon_analyze_large.jpg" alt="" width="60" height="40">
                            </span>
                            Analysing and Rreporting
                          </a>
                          <a href="" class="list-group-item">
                            <span class="container theme-showcase">
                                <img src="/static/assets/ico/ic_share.jpg" alt="" width="60" height="40">
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
                    <form data-toggle="validator" action="/main/sign_up" id="contact-form" class="form-horizontal" method="post">
                         <fieldset>
                            <legend>Create a new Account</legend>

                            <div class="controls col-sm-10">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="name" id="inputName" placeholder="Name" required>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" name="username" id="inputEmail" placeholder="Email" data-error="Bruh, that email address is invalid" required>
                                    <div class="help-block with-errors"></div>
                                </div>
                                <div class="form-group">
                                    <div class="form-group col-sm-12">
                                        <input type="password" name="password" data-toggle="validator" data-minlength="6" class="form-control" id="inputPassword" placeholder="Password" required>
                                        <span class="help-block">Minimum of 6 characters</span>
                                        <input type="password" class="form-control" id="inputPasswordConfirm" data-match="#inputPassword" data-match-error="Whoops, these don't match" placeholder="Confirm" required>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="radio">
                                      <label>
                                        <input type="radio" name="gender" required>
                                        Male
                                      </label>
                                    </div>
                                    <div class="radio">
                                      <label>
                                        <input type="radio" name="gender" required>
                                        Female
                                      </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary" disabled="disabled">Submit</button>
                                </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
        <div class="row"><!-- /.col-sm-4 --><!-- /.col-sm-4 --><!-- /.col-sm-4 -->
        </div>
    </div>
</div><!-- /container -->

<?php include('footer.php'); ?>
