<?php
include('default_header.php');

    $i = 0;
    $j = 0;
    $questionById = null;
    foreach ($reportData as $key => $value) {
        $data[$key] = $reportData[$key];
    }

    if($questionById!=null){
        foreach ($questionById as $key => $value) {
            $data_1[$key] = $questionById[$key];
        }

        foreach ($answersDataByQuestionId as $key => $value) {
            $data_2[$key] = $answersDataByQuestionId[$key];
        }
    }else{
        foreach ($questionData as $key => $value) {
            $data_1[$key] = $questionData[$key];
        }

        foreach ($answersData as $key => $value) {
            $data_2[$key] = $answersData[$key];
        }
    }

?>

<div class="container theme-showcase">
    <hr>
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">

        <!--Graphcal analysis-->
        <div class="col-lg-12">
            <div class="panel-group" id="accordion">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                          Analyse Survey Question By Question
                        </a>
                      </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <div class="panel-group">
                                        <div class="panel panel-info">
                                            <?php
                                                foreach ($questionData as $key_ => $value) {
                                                    if( $questionData[$key_]->option_choice_id != 3 ){
                                                        echo '
                                                        <a href="/survey/reportSurveyByQuestion/'.$questionData[$key_]->questions_id.'">
                                                            <button type = "submit" class="question_selection btn btn-info btn-sm col-sm-12"
                                                                data-row-key='.$questionData[$key_]->questions_id.'>
                                                                    '.$questionData[$key_]->questions_name.'
                                                            </button>
                                                        </a>';
                                                    };
                                                }
                                            ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--Static Analysis -->
        <!--<div class="col-lg-12">
            <div class="panel-group" id="accordion">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                            Statistical Analysis
                        </a>
                      </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <div class="panel-group">
                                        <div class="panel panel-info">
                                            <?php
                                                foreach ($questionData as $key_ => $value) {
                                                    if( $questionData[$key_]->option_choice_id != 3 ){
                                                        echo '
                                                        <a href="/survey/reportSurveyByQuestion/'.$questionData[$key_]->questions_id.'">
                                                            <button type = "submit" class="question_selection btn btn-info btn-sm col-sm-12"
                                                                data-row-key='.$questionData[$key_]->questions_id.'>
                                                                    '.$questionData[$key_]->questions_name.'
                                                            </button>
                                                        </a>';
                                                    };
                                                }
                                            ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>-->

        <div class="row"><!-- /.col-sm-4 --><!-- /.col-sm-4 --><!-- /.col-sm-4 -->
        </div>
    </div>
</div><!-- /container -->


<?php include('footer.php');?>

