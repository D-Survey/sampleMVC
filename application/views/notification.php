<div>
    <?php
    if($mySurveyData!=null){
        foreach ($mySurveyData as $key => $value) {
            echo '<div class="panel panel-default">
                    <div class="panel-body">
                        <a href="/survey/getSurvey/'.$mySurveyData[$key]->survey_collection_id.'" target = "_blank">
                            '.$mySurveyData[$key]->sections_name.'
                        </a>
                        <br>
                        <div class="pull-right">
                        '.date('d-M-Y H:i:s', $mySurveyData[$key]->created_date).'
                        </div>
                    </div>
                </div>';
        }
    }
    ?>
</div>
