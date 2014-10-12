<?php include('/application/views/default_header.php'); ?>
    <div class="container theme-showcase">
    	<hr>
        <div class="jumbotron">

        	<div class="container">
	        	<div class="col-sm-12">
		            <div class="nn panel panel-primary">
		                <div class="panel-heading">
		                	Survey Uploaded from Mobile
		                </div>
		        	</div>


                <?php
	                if($mobSurveyData!=null){
	                    /*var_dump($mySurveyData);
	                    exit();*/
	                    foreach ($mobSurveyData as $key => $value) {
	                        echo '<div class="col-sm-6">
	                            	<div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        '.$mobSurveyData[$key]->survey_name.'
	                                	</div>
                                        <div class="panel-body">
                                        	<a href="/mobile/addSurvey/'.$mobSurveyData[$key]->mobi_survey_id.'">
                                                <i class="glyphicon glyphicon-ok"></i> <span>Approve </span></a>
                                                &nbsp;&nbsp;
                                            <a href="/mobile/deleteSurvey/'.$mobSurveyData[$key]->mobi_survey_id.'">
                                                <i class="glyphicon glyphicon-trash"></i>  <span>Delete </span></a>
                                        </div>
	                                </div>
	                            </div>';
	                    }
	                }
                ?>

                </div>

                <div class="col-sm-12">
        		    <!-- bottom title bar -->
        		    <div class="nn panel panel-primary">
                        <div class="panel-heading">
                        	.
                        </div>
                	</div>
                </div>
            </div>


    	</div>

    	<!-- Cloud drive Popup  -->
    	<div class="modal fade bs-example-modal-lg" id = "cloudDriveModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header primary">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">D-Drive</h4>
                    </div>
                    <div class="modal-body">

                    	<div id="container">

                        <?php

                        /*function DirDisply($data) {

                             $TrackDir=opendir(".");

                             while ($file = readdir($TrackDir)) {

                              if ($file == "." || $file == "..") { }
                                 else {
                                     print "<tr><td><font face=\"Verdana, Arial, Helvetica, sans-serif\"><a href=$file target=_blank>$file</a></font> </td>";
                                     print "<td>  ".filetype($file)."</td></tr><br>";

                                  }

                             }
                             closedir($TrackDir);

                        return $data;
                        }

                        @ DirDisply($data);  */
                        ?>
						</div>


                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" id = 'close' data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" id = 'save'>Save </button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

        <!-- Cloud upload Popup -->
    	<div class="modal fade bs-example-modal-lg" id = "cloudUploadModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">Upload to D-Drive</h4>
                    </div>
                    <div class="modal-body">

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" id = 'close' data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" id = 'save'>Save </button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
	</div>
<?php include('/application/views/footer.php'); ?>
