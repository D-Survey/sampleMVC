
<?php
include('default_header.php');

/*var_dump($reportData);
exit();*/
    $i = 0;
    foreach ($reportData as $key => $value) {
        $data[$key] = $reportData[$key];
        $i++;
    }

    foreach ($questionDataById as $key => $value) {
        $data_1[$key] = $questionDataById[$key];
    }

    foreach ($answersDataByQuestionId as $key => $value) {
        $data_2[$key] = $answersDataByQuestionId[$key];
    }
include('pieChart.php');
include('barChart.php');
?>

<div class="container theme-showcase">
    <hr>
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">

        <!--Graphical analysis-->
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
                    <div id="collapseOne" class="panel-collapse collapse in col-lg-6">
                        <div class="panel-body">
                            <div class="analyse analyse-chart panel-group" id="accordion_1">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                      <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion_1" href="#collapseOne_1">
                                          Pie Chart
                                        </a>
                                      </h4>
                                    </div>
                                    <div id="collapseOne_1" class="panel-collapse collapse in">
                                      <div class="panel-body">
                                        <div id="piechart"></div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="panel panel-default">
                                    <div class="panel-heading">
                                      <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion_1" href="#collapseTwo_2">
                                          Bar Chart
                                        </a>
                                      </h4>
                                    </div>
                                    <div id="collapseTwo_2" class="panel-collapse collapse">
                                      <div class="panel-body">
                                        <div class="panel-body" id="chart_div"></div>
                                      </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--Staticial analysis-->
        <div class="col-lg-12">

        </div>

        <div class="row"><!-- /.col-sm-4 --><!-- /.col-sm-4 --><!-- /.col-sm-4 -->
        </div>
    </div>
</div><!-- /container -->


<?php include('footer.php');?>

