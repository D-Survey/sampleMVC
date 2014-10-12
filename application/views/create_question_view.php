<?php include('default_header.php'); ?>
    <hr>
    <div class="container theme-showcase">
        <div class="jumbotron">
            <div class="panel panel-primary">
                <div class="panel-heading">
                        <?php
                            $data = $surveyData;
                            echo $surveyData['sections_name'];
                        ?>
                </div>
                <div class="panel-body" id = "create-question">
                    <?php
                        //$data = $surveyData;
                        //var_dump($data);

                        //----------------------------
                        /*new survey view*/
                        if( $visibleQuestion == true ) {

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
				                							<input type="radio" name="'. $questionData[$key]->questions_id .'"
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
				                							<input type="checkbox" name="'. $questionData[$key]->questions_id .'"
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
				                							<input type="radio" name="'. $questionData[$key]->questions_id .'"
				                							value="'.$answersData[$key_1]->answer_id.'"> '
				                							.$answersData[$key_1]->answer_text.
				                						'';
				                				}
				                			}
                                    echo '</div>';
				                	echo '</div>
				                	</div>';

				            }
						}
                        }

                        //----------------------------
                        /*var_dump($data['sections_name']);
                        exit();*/
                        //hide the data
                        echo '<input type="hidden" name="sections_name" id="sections_name" value = "'. $data['sections_name'] .'"
                            data-sections_name = "'. $data['sections_name'] .'">';
                        echo '<input type="hidden" name="survey_header_id" id="survey_header_id"
                            data-survey_header_id = '. $data['survey_header_id'] .'>';
                        echo '<input type="hidden" name="user_id" id="user_id"
                            data-user_id = '. $data['user_id'] .'>';
                    ?>

                    <div class="form-group">
                        <a id ="add_question" class="btn btn-primary btn-sm pull-right"><i class="glyphicon glyphicon-plus"></i> Add Question</a>
                        <br><br><br>
                        <a href="SessionRemove" class="btn btn-primary btn-sm pull-right"> Continue
                            <i class="glyphicon glyphicon-fast-forward"></i>
                        </a>
                        <div class="modal fade bs-example-modal-lg">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title">Add New Question</h4>
                                    </div>
                                    <div class="modal-body">
                                        Question Text
                                            <textarea rows="3" name="QuestionDesc" id="QuestionDesc" style="width: 100%;"></textarea>
                                            <br><br>

                                        Question Type:
                                            <select  name="QuestionType" id="QuestionType">
                                                <option selected="selected" value="0">-- Choose Question Type --</option>
                                                <option value="1">Multiple Choice (Only One Answer)</option>
                                                <option value="2">Multiple Choice (Multiple Answers)</option>
                                                <option value="3">Ranking</option>
                                                <option value="4">Rating Scale</option>
                                            </select>
                                            <br><br>

                                            <div id = 'answer-text'>

                                            </div>
                                           <!-- <button type="button" class="btn btn-primary"><i class="glyphicon glyphicon-plus"></i>
                                                Add Answer
                                            </button>  -->
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" id = 'close' data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary" id = 'save'>Save </button>
                                    </div>
                                    </div><!-- /.modal-content -->
                            </div><!-- /.modal-dialog -->
                        </div><!-- /.modal -->
                    </div>
                </div>

                <div class="row"><!-- /.col-sm-4 --><!-- /.col-sm-4 --><!-- /.col-sm-4 -->
                </div>
            </div>
        </div>
    </div>
<?php include('footer.php'); ?>
<!--<select name="QuestionType" id="QuestionType">
		<option selected="selected" value="0">-- Choose Question Type --</option>
		<option value="1">Multiple Choice (Only One Answer)</option>
		<option value="2">Multiple Choice (Multiple Answers)</option>
		<option value="3">Ranking</option>
		<option value="4">Rating Scale</option>
</select>-->
