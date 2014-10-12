<?php include('default_header.php'); ?>
    <hr>
    <div class="container theme-showcase">
        <div class="jumbotron">
            <div class="panel panel-primary">
                <div class="panel-heading">
                        <?php echo $_SESSION['sections_name'];?>
                </div>
                <div class="panel-body">

                    <?php
						foreach ($questionData as $key => $value) {
							if($questionData[$key]->option_choice_id==1){
								echo '<div class="panel panel-primary">
										<div class="panel-heading">
											<a href="#" class="editable" id="phone_number" data-type="text" data-pk='.$questionData[$key]->questions_name.'>
		                        				'. $questionData[$key]->questions_name .'
		                        				</a>
				                		</div>
				                		<div class="panel-body">';
				                			foreach ($answersData as $key_1 => $value) {

				                				if($questionData[$key]->question_options_id==$answersData[$key_1]->question_options_id){
				                					echo '<div >
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
											<a href="#" class="editable" id="phone_number" data-type="text" data-pk='.$questionData[$key]->questions_name.'>
		                        				'. $questionData[$key]->questions_name .'
	                        				</a>
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
											<a href="#" class="editable" id="phone_number" data-type="text" data-pk='.$questionData[$key]->questions_name.'>
		                        				'. $questionData[$key]->questions_name .'
		                        				'. $questionData[$key]->questions_subtext .'
		                        			</a>
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
					?>
                </div>

                <div class="row"><!-- /.col-sm-4 --><!-- /.col-sm-4 --><!-- /.col-sm-4 -->
                </div>
            </div>
        </div>
    </div>
<?php include('footer.php'); ?>
