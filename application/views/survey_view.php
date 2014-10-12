<?php include('default_header.php'); ?>
    <hr>
    <div class="container theme-showcase">
        <div class="jumbotron">
            <div class="panel panel-primary">
                <div class="panel-heading">
                        Sample Surveys Design
                </div>
                <div class="panel-body">

                    <div class="container"><!-- Select Survey -->
                        <div class="col-sm-6">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    Survey Sections
                                </div>
                                <div class="panel-body">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-info">
                                            <button class="btn btn-info btn-sm col-sm-12 new">
                                                <i class="glyphicon glyphicon-hand-right"></i>
                                                Create a new survey
                                            </button>
                                            <button class="btn btn-info btn-sm col-sm-12 exists">
                                                <i class="glyphicon glyphicon-hand-right"></i>
                                                Use an existing survey
                                            </button>
                                            <button class="btn btn-info btn-sm col-sm-12 pre">
                                                <i class="glyphicon glyphicon-hand-right"> </i>
                                                Use pre-design survey template
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6"><!-- New Survey -->
                            <div class="survey new-survey panel panel-primary">
                                <div class="panel-heading">
                                    Create New Survey
                                </div>
                                <div class="panel-body">
                                    <div class="panel-group">
                                        <div class="panel panel-info">
                                            <form action="survey/createNewSurvey" method="POST">
                                                <div class="input-group input-group-sm">
                                                    <span class="input-group-addon">Title &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</span>
                                                    <input type="text" class="form-control" name="sections_name" placeholder="Title of your Survey">
                                                </div>
                                                <div class="input-group input-group-sm">
                                                    <span class="input-group-addon">Category :</span>
                                                    <select class="form-control" name="survey_header_id">
                                                    <?php
                                                    foreach ($surveyHeaderData as $key => $value) {
                                                        echo '<option value="'.$surveyHeaderData[$key]->survey_header_id.'">
                                                                            '.$surveyHeaderData[$key]->survey_name.'</option>';
                                                    }
                                                    ?>
                                                    </select>
                                                </div>
                                                <button type="submit" class="btn btn-primary btn-sm pull-right">
                                                    Continue <i class="glyphicon glyphicon-fast-forward"></i>
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /New Survey -->

                        <div class="col-sm-6"><!-- User existing Survey -->
                            <div class="survey exists-survey panel panel-primary">
                                <div class="panel-heading">
                                    User existing Survey
                                </div>
                                <div class="panel-body">
                                    <div class="panel-group">
                                        <div class="panel panel-info">
                                            <form action="survey/useExistSurvey" method="POST">
                                                <div class="input-group input-group-sm">
                                                    <span class="input-group-addon">Survey Title &nbsp;&nbsp;:</span>
                                                    <input type="text" class="form-control" name="sections_name" placeholder="Title of your Survey">
                                                </div>
                                                <div class="input-group input-group-sm">
                                                    <span class="input-group-addon">Survey name :</span>
                                                    <select class="form-control" name="survey_sections_id">
                                                    <?php
                                                    foreach ($existingSurveyData as $key => $value) {
                                                        echo '<option value="'.$existingSurveyData[$key]->survey_sections_id.'">
                                                                            '.$existingSurveyData[$key]->sections_name.'</option>';
                                                    }
                                                    ?>
                                                    </select>
                                                </div>
                                                <button type="submit" class="btn btn-primary btn-sm pull-right">
                                                    Continue <i class="glyphicon glyphicon-fast-forward"></i>
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /User existing Survey -->

                    </div><!-- /Select Survey -->

                    <div class="survey pre-survey container"><!-- Pre-Survey -->

                        <div class="col-sm-6">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    Survey Type
                                </div>
                                <div class="panel-body">
                                    <div class="panel-group">
                                        <div class="panel panel-info">
                                            <?php
                                                foreach ($surveyHeaderData as $key => $value) {
                                                    echo '<div class="panel-heading">
                                                          <h4 class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#'.$key.'">
                                                                '.$surveyHeaderData[$key]->survey_name.'
                                                            </a>
                                                          </h4>
                                                        </div>
                                                        <div id="'.$key.'" class="panel-collapse collapse">';
                                                        echo '<div class="panel-body">';
                                                            foreach ($surveySectionData as $key_ => $value) {
                                                                if($surveySectionData[$key_]->survey_header_id==$surveyHeaderData[$key]->survey_header_id){
                                                                    echo '<button class="survey_header btn btn-info btn-sm col-sm-12"
                                                                            data-row-key='.$surveySectionData[$key_]->survey_sections_id.'>
                                                                                '.$surveySectionData[$key_]->sections_name.'
                                                                            </button>';
                                                                }
                                                            }
                                                        echo '</div>
                                                        </div>';
                                                    }
                                            ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    Survey Template Discription
                                </div>
                                <div class="panel-body">
                                    <div class="col-sm-12">
                                    <pre>
                                        <span class="survey_section col-sm-12">
                                        </span>
                                    </div>

                                    <form action="/survey/getPreDesignSurvey" method="POST">
                                        <input class="continue-id" type="hidden" name="survey_sections_id">
                                        <input class="continue-title" type="hidden" name="sections_name">
                                        <button type="submit" class="btn btn-primary btn-sm pull-right">
                                            Continue <i class="glyphicon glyphicon-fast-forward"></i>
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- /Pre-Survey -->
                <br><br><br><br><br>
                <div class="row"><!-- /.col-sm-4 --><!-- /.col-sm-4 --><!-- /.col-sm-4 -->
                </div>
            </div>
        </div>
    </div>
<?php include('footer.php'); ?>

<?php
    /*echo $someval;
    date_default_timezone_set('Asia/Colombo');
    echo date('d-m-Y H:i:s');*/

    /*echo "<pre>";
    foreach ($userdata as $key => $value) {
    echo $userdata[$key]->username;
    }*/
    /*foreach ($surveyHeaderData as $key => $value) {
        echo '<div class="col-sm-12">
                  <button class="survey_header btn btn-default btn-sm col-sm-12"
                  data-row-key='.$surveyHeaderData[$key]->survey_header_id.'>
                    '.$surveyHeaderData[$key]->survey_name.'
                  </button>
            </div>';
    }*/
?>
