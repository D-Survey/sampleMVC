<?php include('default_header.php'); ?>
    <div class="container theme-showcase">
        <hr>
        <div class="jumbotron">

            <div class="container">
                <div class="panel panel-primary">
                        <div class="panel-heading">
                            My survey
                        </div>
                </div>
                <div class="col-sm-3">
                    <div class="nn panel panel-primary">
                        <div class="panel-heading">
                            <?php
                                if($userdata['value']->image!=null){
                                    echo '<img data-src="holder.js/200x200" class="img-thumbnail" alt="200x200"
                                            src="/static/assets/UserImages/'.$userdata['value']->image.'.jpg"
                                            style="width: 200px; height: 200px;">';
                                }else{
                                    echo '<img data-src="holder.js/200x200" class="img-thumbnail" alt="200x200"
                                            src="/static/assets/UserImages/Default/profile.png"
                                            style="width: 200px; height: 200px;">';
                                }
                            ?>
                            <hr>
                            <?php
                                echo '<i class="glyphicon glyphicon-user"></i> '.$userdata['value']->name.'<br>';
                                echo '<i class="glyphicon glyphicon-earphone"></i> '.$userdata['value']->phone_number.'<br>';
                                echo '<i class="glyphicon glyphicon-envelope"></i> '.$userdata['value']->email.'<br>';
                            ?>
                        </div>
                    </div>
                </div>
                <div class="col-sm-9">
                    <!--<div class="panel panel-primary">
                        <div class="panel-heading">-->
                            <?php
                            if($mySurveyData!=null){
                                /*var_dump($mySurveyData);
                                exit();*/
                                foreach ($mySurveyData as $key => $value) {
                                    echo '<div class="panel panel-default">
                                                <div class="panel-heading">
                                                '.$mySurveyData[$key]->sections_name.'
                                                    <div class="pull-right">
                                                    '.date('d-M-Y H:i:s', $mySurveyData[$key]->created_date).'
                                                    </div>
                                         </div>
                                                <div class="panel-body">
                                                    <a href="/survey/getSurvey/'.$mySurveyData[$key]->survey_collection_id.'">
                                                        <i class="glyphicon glyphicon-eye-open"></i> <span>View </span></a>
                                                        &nbsp;&nbsp;
                                                    <a href="/survey/deleteSurvey/'.$mySurveyData[$key]->survey_collection_id.'">
                                                        <i class="glyphicon glyphicon-trash"></i>  <span>Delete </span></a>
                                                        &nbsp;&nbsp;
                                                    <a href="/survey/reportSurvey/'.$mySurveyData[$key]->survey_collection_id.'">
                                                        <i class="glyphicon glyphicon-stats"></i>  <span>Report </span></a>
                                                    <a href="/survey/editSurvey/'.$mySurveyData[$key]->survey_collection_id.'">
                                                        <i class="glyphicon glyphicon-pencil"></i>  <span>Edit </span></a>
                                                    <hr>
                                                    <div class="fb-share-button"
                                                        data-href="http://d-survey.com/survey/getSurvey/'.$mySurveyData[$key]->survey_collection_id.'"
                                                        data-type="button_count">
                                                    </div>
                                                    <a href="http://d-survey.com/survey/getSurvey/'.$mySurveyData[$key]->survey_collection_id.'"
                                                        class="twitter-share-button" data-lang="en">Tweet</a>
                                                </div>
                                        </div>';
                                }
                            }
                            ?>
                        <!--</div>
                    </div>-->
                </div>
            </div>
            <div class="row"><!-- /.col-sm-4 --><!-- /.col-sm-4 --><!-- /.col-sm-4 -->
            </div>
        </div>
    </div>
<?php include('footer.php'); ?>
