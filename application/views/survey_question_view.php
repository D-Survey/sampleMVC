<?php
	if($_SESSION!=null){
		include('default_header.php');
	}else{
		include('header.php');
	}
?>
    <hr>
    <div class="container theme-showcase">
        <div class="jumbotron">
            <div class="panel panel-primary">
                <div class="panel-heading">
                        <?php echo $surveyQuestionData[0]->sections_name;?>
                </div>
                <div class="panel-body">

                	<form action="/survey/dataCollection/<?php echo $surveyQuestionData[0]->survey_collection_id;?>" method="POST">
                    <?php
                                /*var_dump($questionData);
                                exit();*/
                    	$_SESSION['survey_collection_id'] = $surveyQuestionData[0]->survey_collection_id;
						foreach ($questionData as $key => $value) {
							if($questionData[$key]->option_choice_id==1){
								echo '<div class="panel panel-primary">
										<div class="panel-heading">
	                        				'. $questionData[$key]->questions_name .'
	                        				'. $questionData[$key]->questions_subtext .'
				                		</div>
				                		<div class="panel-body">';
				                			foreach ($answersData as $key_1 => $value) {

				                				if($questionData[$key]->question_options_id==$answersData[$key_1]->question_options_id){
				                					echo '<div>
				                							<input type="radio" name="'. $answersData[$key_1]->answer_id .'"
                                                                value="'.$answersData[$key_1]->answer_id.'">'
				                							     .$answersData[$key_1]->answer_text.
				                						'</div>';
				                				}
				                			}
				                	echo '</div>
				                	</div>';
				            }else if($questionData[$key]->option_choice_id==2){
								echo '<div class="panel panel-primary">
										<div class="panel-heading">
	                        				'. $questionData[$key]->questions_name .'
	                        				'. $questionData[$key]->questions_subtext .'
				                		</div>
				                		<div class="panel-body">';
				                			foreach ($answersData as $key_1 => $value) {

				                				if($questionData[$key]->question_options_id==$answersData[$key_1]->question_options_id){
				                					echo '<div>
				                							<input type="checkbox" name="'. $answersData[$key_1]->answer_id .'"
                                                                value="'.$answersData[$key_1]->answer_id.'">'
				                							     .$answersData[$key_1]->answer_text.
				                						'</div>';
				                				}
				                			}
				                	echo '</div>
				                	</div>';

				            }else if($questionData[$key]->option_choice_id==3){
								echo '<div class="panel panel-primary">
										<div class="panel-heading">
	                        				'. $questionData[$key]->questions_name .'
	                        				'. $questionData[$key]->questions_subtext .'
				                		</div>
				                		<div class="panel-body">';
				                			foreach ($answersData as $key_1 => $value) {
				                				if($questionData[$key]->question_options_id==$answersData[$key_1]->question_options_id){
				                					echo '<div>
				                				            <input type="text" name="'. $questionData[$key]->questions_id .'">'
				                							.$answersData[$key_1]->answer_text.
				                				        '</div>';
				                				}
				                			}
				                	echo '</div>
				                	</div>';

                            }else if($questionData[$key]->option_choice_id==4){
                                /*var_dump($questionData);
                                exit();*/
								echo '<div class="panel panel-primary">
										<div class="panel-heading">
	                        				'. $questionData[$key]->questions_name .'
	                        				'. $questionData[$key]->questions_subtext .'
				                		</div>
				                		<div class="panel-body">';
                                    echo '<div>';
				                			foreach ($answersData as $key_1 => $value) {
				                				if($questionData[$key]->question_options_id==$answersData[$key_1]->question_options_id){
				                					echo '
				                							<input type="radio" name="'. $answersData[$key_1]->answer_id .'"
                                                                value="'.$answersData[$key_1]->answer_id.'">'
				                							     .$answersData[$key_1]->answer_text.
				                						'';
				                				}
				                			}
                                    echo '</div>';
				                	echo '</div>
				                	</div>';

				            }
						}
					?>
					<input type="hidden" id = "lat" name="latitute" value="">
                    <input type="hidden" id = "lon" name="longitute" value="">
                    <button type="submit" class="btn btn-primary btn-sm pull-right">
                    <i class="glyphicon glyphicon-check"> Submit</i>
                    </button>
                </form>
                </div>

                <div class="row"><!-- /.col-sm-4 --><!-- /.col-sm-4 --><!-- /.col-sm-4 -->
                </div>
            </div>
        </div>
    </div>
<?php include('footer.php'); ?>
<!-- get user location -->
<script>
var lat = document.getElementById("lat");
var lon = document.getElementById("lon");

$(document).on('ready', function (){
	getLocation();
});


function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else {
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

function showPosition(position) {
    lat.value = position.coords.latitude;
    lon.value = position.coords.longitude;
}
</script>
