
<?php
include('default_header.php');
?>

<div class="container theme-showcase">
	<hr>
    <div class="jumbotron">
    	<div class="container">
    		<div id="printableDiv">
	    		<div class="heading panel panel-primary">
	                <div class="panel-heading">
	                    <?php echo $surveyQuestionData[0]->sections_name; ?>
	                    <div class = "sub-heading">Survey Results Analysis‎ report</div>
	                    <div class="pull-right">
	                    	<?php echo date('d-M-Y H:i:s', $surveyQuestionData[0]->created_date); ?>
	                    </div>
	                    <hr>
	                </div>
	    		</div>
	    		<div class="panel-body">
				<?php
				//var_dump($surveyQuestionData);
				$questionNo = 0;
				foreach ($questionData as $key => $value) {
				    $tempQuestionData[$key] = $questionData[$key];
				    $data = array();
				    $i = 0;
				    $j = 0;


				    foreach ($reportData as $key_1 => $value) {
				    	$tempReportData[$key_1] = $reportData[$key_1];

				    	if($tempQuestionData[$key]->questions_id == $tempReportData[$key_1]->questions_id) {
				        	$data[$i] = $reportData[$key_1];
				        	$i++;
				    	}
					}

				    foreach ($answersData as $key_2 => $value) {
				        $tempAnswerData[$key_2] = $answersData[$key_2];

				        if($tempQuestionData[$key]->questions_id == $tempAnswerData[$key_2]->questions_id) {
				        	$data_answer[$j] = $answersData[$key_2];
				        	$j++;
				    	}
				    }
				    $questionName = $tempQuestionData[$key]->questions_name;
				    $questionNo++;

				include('pieChart.php');
				/*include('barChart.php');*/
				?>
		    		<div class="col-lg-12" style="page-break-after:always;">
			            <div class="panel panel-default">
				            <div class="panel-heading">
				            	Q.<?php echo $questionNo;?>
				                <?php echo $questionName;?>
				            </div>
				            <div class="panel-body">
				            	<!-- Graph Reprasentation -->
								<div class="col-lg-6">
				            		<div class="piechart panel-body" id = '<?php echo $data[$key]->questions_id;?>'></div>
				            		<!-- <div class="barchart panel-body" id = "barchart"></div> -->
					            </div>

					            <!-- Statical Representation -->
					            <div class="col-lg-6">

				            		<?php
										foreach ($data as $key_value => $value) {
										    $lable[$key_value] = '"'.$data_answer[$key_value]->answer_text.'"';
										    $valueArray[$key_value] = $data[$key_value]->collection_value;
										}
										$maxIndex = array_keys($valueArray, max($valueArray));
										$message = "Most responce for this Question is ".$lable[$maxIndex[0]]." Response value : ".$valueArray[$maxIndex[0]];
										//var_dump($message);

										echo '<div class="alert alert-info" role="alert">
												Most responce for this Question is '.$lable[$maxIndex[0]].'</br>
												Response value : '.$valueArray[$maxIndex[0]].'

											</div>';
									?>

									<table class="table table-striped">
									    <thead>
										    <tr class="info">
										        <th>Choices</th>
										        <th>Responses</th>
										    </tr>
									    </thead>
									    <?php
			                                foreach ($data as $key_3 => $value) {
			                                    echo '<tbody>
									    				<tr>
			                                                <td>'.$data_answer[$key_3]->answer_text.'</td>
			                                                <td>'.$data[$key_3]->collection_value.'</td>
			                                            </tr>
			                                        </tbody>';
			                                }
			                            ?>
									</table>
					            </div>

					        </div>
					    </div>
				    </div>

				<?php
					}
				?>
				</div>
			</div>

			<div class="panel panel-primary">
		        <div class="footer-bar panel-heading">
		        	<div class="pull-right">
		        		<button type="print" id = "print" class="btn btn-primary btn-sm pull-right">
                            <i class="print glyphicon glyphicon-print"></i> Print
                        </button>
                        <button type="save" id = "save" class="btn btn-primary btn-sm pull-right">
                            <i class="print glyphicon glyphicon-cloud-upload"></i> Save to D-Drive
                        </button>
		        	</div>
		        </div>
			</div>

	    </div>
    </div>
</div><!-- /container -->
<script src="/static/assets/jsPDF/dist/jspdf.min.js"></script>
<script>
	/*$(function () {
	    var doc = new jsPDF();
	    var specialElementHandlers = {
	        '#editor': function (element, renderer) {
	            return true;
	        }
	    };

	    $('#print').click(function () {
	        doc.fromHTML($('#content').html(), 15, 15, {
	            'width': 170,
	                'elementHandlers': specialElementHandlers
	        });
	        doc.save('sample-file.pdf');
	    });
	});*/

	$('#print').click(function () {
		var divElements = document.getElementById('printableDiv').innerHTML;
        //Get the HTML of whole page
        var oldPage = document.body.innerHTML;

        //Reset the page's HTML with div's HTML only
        document.body.innerHTML =
          "<html><head><title></title></head><body>" +
          divElements + "</body>";

        //file name
        document.title = '<?php echo $surveyQuestionData[0]->sections_name; ?>';
        //Print Page
        window.print();

        //Restore orignal HTML
        document.body.innerHTML = oldPage;
    });

</script>

<style>
.table>thead>tr>th,
.table>tbody>tr>th,
.table>tfoot>tr>th,
.table>thead>tr>td,
.table>tbody>tr>td,
.table>tfoot>tr>td {
	padding: 2px;
	padding-left: 15px;
	line-height: 1.42857143;
}
table {
	border-collapse: separate;
	font-size: 10px;
}
.alert {
	font-family: cursive;
}
.panel-body {
	padding-left: -10px;
	padding-top: 15px;
}
.piechart {
	margin-left: -40px;
}
.heading>.panel-heading {
	font-size: 30px;
	font-family: initial;
	padding-left: 20px;
	height: 120px;
}
.panel-primary>.panel-heading>.pull-right {
	font-size: 14px;
}
.sub-heading{
	font-size: 18px;
	font-family: cursive;
}
.footer-bar{
	height: 50px;
}
.print{
	padding-top: -10px;
	font-size: 30px;
}
.btn-sm, .btn-group-sm>.btn {
	padding: 0px 10px;
	margin-right: 5px;
}

</style>

<?php
include('footer.php');
?>

