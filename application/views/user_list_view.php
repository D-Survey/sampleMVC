<?php include('default_header.php'); ?>
    <hr>
    <div class="container theme-showcase">
        <div class="jumbotron">
            <div class="panel panel-primary">
                <div class="panel-heading">
                  <h3 class="panel-title">User List</h3>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <colgroup>
                                <col class="col-sm-2">
                                <col class="col-sm-2">
                                <col class="col-sm-2">
                                <col class="col-sm-2">
                                <col class="col-sm-2">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th class="clickable_tr" style="display:none;">User Uid</th>
                                    <th>Username</th>
                                    <th>Full Name</th>
                                    <th>Email</th>
                                    <th>Phone Number</th>
                                    <th>Role</th>
                                </tr>
                            </thead>
                            <?php
                                foreach ($userdata as $key => $value) {
                                    echo '<thead>
                                            <tr data-row-key='.$userdata[$key]->user_uid.'
                                                data-toggle="modal" data-target=".bs-example-modal-lg">
                                                <td class="btn btn-group" style="display:none;">'.$userdata[$key]->user_uid.'</td>
                                                <td class="btn btn-group">'.$userdata[$key]->username.'</td>
                                                <td class="btn btn-group">'.$userdata[$key]->name.'</td>
                                                <td class="btn btn-group">'.$userdata[$key]->email.'</td>
                                                <td class="btn btn-group">'.$userdata[$key]->phone_number.'</td>
                                                <td class="btn btn-group">'.$userdata[$key]->role.'</td>
                                            </tr>
                                        </thead>';
                                }
                            ?>
                        </table>
                        <div class="modal fade bs-example-modal-lg">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title"></h4>
                                  </div>
                                  <div class="modal-body">

                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Save changes</button>
                                  </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal-dialog -->
                        </div><!-- /.modal -->
                </div>
            </div>
        </div>
    </div>
</div>
<?php include('footer.php'); ?>
