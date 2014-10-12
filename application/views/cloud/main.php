<?php include('/application/views/default_header.php'); ?>
    <div class="container theme-showcase">
    	<hr>
        <div class="jumbotron">

        	<div class="container">
	        	<div class="col-sm-12">
		            <div class="nn panel panel-primary">
		                <div class="panel-heading">
		                	D-Surver File Management Dashboard
		                		<div class="pull-right">
		                			Drive <i id = "cloudDrive" class="icon btn glyphicon glyphicon-cloud"></i>
		                			file upload <i id = "cloudUpload" class="icon btn glyphicon glyphicon-cloud-upload"></i>
		                		</div>
		                </div>
		        	</div>


                <?php
	                if($mySurveyData!=null){
	                    /*var_dump($mySurveyData);
	                    exit();*/
	                    foreach ($mySurveyData as $key => $value) {
	                        echo '<div class="col-sm-6">
	                            	<div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        '.$mySurveyData[$key]->sections_name.'
	                                            <div class="pull-right">
	                                            '.date('d-M-Y H:i:s', $mySurveyData[$key]->created_date).'
	                                            </div>
	                                	</div>
                                        <div class="panel-body">
                                        	<a href="/cloud/exportExcel/'.$mySurveyData[$key]->survey_collection_id.'">
	                                            <img class="excel img-thumbnail btn" alt="200x200"
	                                            src="/static/assets/ico/excel.ico"
	                                            data-id = "'.$mySurveyData[$key]->survey_collection_id.'"
	                                            data-format = "excel"
	                                            style="width: 60px; height: 60px;">
                                            </a>

                                            <a href="/cloud/exportCSV/'.$mySurveyData[$key]->survey_collection_id.'">
	                                            <img class="csv img-thumbnail btn" alt="200x200"
	                                            src="/static/assets/ico/csv.ico"
	                                            data-id = "'.$mySurveyData[$key]->survey_collection_id.'"
	                                            data-format = "csv"
	                                            style="width: 60px; height: 60px;">
	                                        </a>
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
