<?php

class Survey_model extends Model {

	public function surveyHeader(){
		$result = $this->query('SELECT * FROM tbl_survey_header WHERE survey_header_id != 7');
		return $result;
	}

	public function surveySection(){
		$result = $this->query('SELECT * FROM tbl_survey_sections WHERE sections_title = "pre"');
		return $result;
	}


	public function surveySectionById($id){
		$result = $this->query('SELECT * FROM tbl_survey_sections WHERE survey_sections_id="'.$id.'"');
		return $result;
	}

	public function insertSurveySection($data){
		$result = $this->execute('INSERT INTO tbl_survey_sections (sections_name, survey_header_id, sections_required_state)
							VALUES ("'.$data['sections_name'].'", 6, 0)');
		$lastInsertId = $this->lastInsertId();
		return $lastInsertId;
	}

    public function insertSurveySectionByheaderId($data){
		$result = $this->execute('INSERT INTO tbl_survey_sections (sections_name, survey_header_id, sections_required_state)
							VALUES ("'.$data['sections_name'].'", "'.$data['survey_header_id'].'", 0)');
		$lastInsertId = $this->lastInsertId();
		return $lastInsertId;
	}

	public function question($id){
		$result = $this->query('SELECT *
							FROM tbl_questions
							INNER JOIN tbl_question_options
							ON tbl_questions.questions_id=tbl_question_options.questions_id
							WHERE survey_sections_id="'.$id.'"');
		return $result;
	}

    /*public function existingSurveyQuestion($id){
		$result = $this->query('SELECT *
							FROM tbl_questions
							INNER JOIN tbl_question_options
							ON tbl_questions.questions_id=tbl_question_options.questions_id
                            INNER JOIN tbl_answers
							ON tbl_question_options.question_options_id=tbl_answers.question_options_id
							WHERE tbl_questions.survey_sections_id="'.$id.'"');
		return $result;
	}*/

	public function questionById($id){
		$result = $this->query('SELECT *
							FROM tbl_questions
							WHERE questions_id="'.$id.'"');
		return $result;
	}

	public function questionNameById($id){
		$result = $this->query('SELECT questions_name
							FROM tbl_questions
							WHERE questions_id="'.$id.'"');
		return $result;
	}

	public function insertQuestion($data){
		$result = $this->execute('INSERT INTO tbl_questions (survey_sections_id, input_type_id, questions_name, questions_subtext,
        answer_required_state, created_date, modified_date, created_by, modified_by, option_group_id, allow_multiple_answer_state)
        VALUES ("'.$data['survey_sections_id'].'", "'.$data['input_type_id'].'", "'.$data['questions_name'].'",
        "'.$data['questions_subtext'].'", "'.$data['answer_required_state'].'", "'.$data['created_date'].'", "'.$data['modified_date'].'",
        "'.$data['created_by'].'", "'.$data['modified_by'].'", "'.$data['option_group_id'].'", "'.$data['allow_multiple_answer_state'].'")');
		$lastInsertId = $this->lastInsertId();
		return $lastInsertId;
	}

	public function answer(){
		$result = $this->query('SELECT *
							FROM tbl_answers
							INNER JOIN tbl_question_options
							ON tbl_answers.question_options_id=tbl_question_options.question_options_id ');
		return $result;
	}

	public function answerById($id){
		$result = $this->query('SELECT answer_text
							FROM tbl_answers
							WHERE answer_id = '.$id.'');
		return $result;
	}

    public function answerBySectionID($id){
		$result = $this->query('SELECT *
							FROM tbl_answers
							JOIN tbl_question_options
							ON tbl_answers.question_options_id=tbl_question_options.question_options_id
                            JOIN tbl_questions
							ON tbl_questions.question_options_id=tbl_question_options.question_options_id
                            WHERE tbl_questions.survey_sections_id="'.$id.'"');
		return $result;
	}

    public function questionOptions($data){
		$result = $this->execute('INSERT INTO tbl_question_options (questions_id, option_choice_id)
        					VALUES ("'.$data['questions_id'].'", "'.$data['option_choice_id'].'")');
		$lastInsertId = $this->lastInsertId();
		return $lastInsertId;
	}

	public function insertAnswer($data){
		$result = $this->execute('INSERT INTO tbl_answers (user_id, question_options_id, answer_text, answer_state, created_date,
							modified_date, created_by, modified_by, unit_of_measures_id)
        					VALUES ("'.$data['user_id'].'", "'.$data['question_options_id'].'", "'.$data['answer_text'].'",
        					"'.$data['answer_state'].'", "'.$data['created_date'].'", "'.$data['modified_date'].'", "'.$data['created_by'].'",
        					"'.$data['modified_by'].'", "'.$data['unit_of_measures_id'].'")');
		$lastInsertId = $this->lastInsertId();
		return $lastInsertId;
	}

	public function answerByQuestionId($id){
		$result = $this->query('SELECT *
							FROM tbl_answers
							INNER JOIN tbl_question_options
							ON tbl_answers.question_options_id=tbl_question_options.question_options_id
							WHERE questions_id="'.$id.'"');
		return $result;
	}

	public function createSurvey($data){
		$result = $this->execute('INSERT INTO tbl_survey_collection (user_id, sections_name, survey_sections_id,
							created_by, created_date)
        					VALUES ("'.$data['user_id'].'", "'.$data['sections_name'].'", "'.$data['survey_sections_id'].'",
        					"'.$data['user_id'].'", "'.$data['created_date'].'")');
		$lastInsertId = $this->lastInsertId();
		return $lastInsertId;
	}

	public function getMySurvey($id){
		$result = $this->query('SELECT *
							FROM tbl_survey_collection
							WHERE user_id="'.$id.'"
							ORDER BY created_date DESC');
		return $result;
	}

	public function getOthersSurvey($id){
		$result = $this->query('SELECT *
							FROM tbl_survey_collection
							WHERE user_id != "'.$id.'"
							ORDER BY created_date DESC
							LIMIT 10');
		return $result;
	}

	public function getSurveyTitle($id){
		$result = $this->query('SELECT sections_name
							FROM tbl_survey_collection
							WHERE survey_collection_id = "' . $id . '"');
		return $result;
	}

	public function getSurveyQuestion($id){
		$result = $this->query('SELECT *
							FROM tbl_survey_collection
							WHERE survey_collection_id="'.$id.'"
							ORDER BY created_date DESC');
		return $result;
	}

	public function createResponseSurvey($data){ //insert data for collect the data
		$result = $this->execute('INSERT INTO tbl_data_collection (questions_id, answer_id, survey_collection_id, collection_value)
        					VALUES ("'.$data['questions_id'].'","'.$data['answer_id'].'","'.$data['survey_collection_id'].'", 0)');
		return $result;
	}

	public function createResponseSurveyWithValue($data){ //insert data for collect the data
		$result = $this->execute('INSERT INTO tbl_data_collection (questions_id, answer_id, survey_collection_id, collection_value)
        					VALUES ("'.$data['questions_id'].'","'.$data['answer_id'].'","'.$data['survey_collection_id'].'", "'.$data['collection_value'].'")');
		return $result;
	}

	public function responseByUser($id, $data){
		$result = $this->execute('UPDATE tbl_data_collection SET collection_value = collection_value + 1
							WHERE survey_collection_id = "'.$id.'" AND answer_id = "'.$data['fld'].'"');
		return $result;
	}

	public function getQuestionIdByIds($id, $data){
		$result = $this->query('SELECT questions_id
							FROM tbl_data_collection
							WHERE survey_collection_id = "'.$id.'" AND answer_id = "'.$data['fld'].'"');
		return $result;
	}

	public function getReportDataById($id){
		$result = $this->query('SELECT *
							FROM tbl_data_collection
							WHERE survey_collection_id="'.$id.'"');
		return $result;
	}

	public function getReportDataByIdById($id, $questionId){
		$result = $this->query("SELECT *
							FROM tbl_data_collection
							WHERE survey_collection_id='$id'
							AND questions_id ='$questionId'");
		return $result;
	}

	public function deleteDataCollectionById($id){
		$result = $this->execute('DELETE
							FROM tbl_data_collection
							WHERE survey_collection_id="'.$id.'"');
		return $result;
	}

	public function deleteSurveyCollectionById($id){
		$result = $this->execute('DELETE
							FROM tbl_survey_collection
							WHERE survey_collection_id="'.$id.'"');
		return $result;
	}

    public function analysisDataTable($data){
        $result = $this->execute('DELETE
							FROM tbl_data_collection
							WHERE survey_collection_id="'.$id.'"');
		return $result;
    }

    public function userResponseTable($tableName) {
    	$query = $this->execute('CREATE TABLE IF NOT EXISTS
    						'.$tableName.'
    						(tbl_id int(12) NOT NULL AUTO_INCREMENT,
    						dump varchar(50),
    						latitude varchar(50),
    						longitude varchar(50),
    						PRIMARY KEY (tbl_id)
							) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1');
    	return $query;
    }

    public function alterUserResponseTable($tableName, $columnName, $datatype) {
    	$query = $this->execute('ALTER TABLE '.$tableName.' ADD '.$columnName.' '.$datatype.'');
    	return $query;
    }

    public function removeUserResponseTable($tableName) {
    	$query = $this->execute('DROP TABLE '.$tableName.'');
    	return $query;
    }

    public function insertUserResponseTable($tableName) {
    	$query = $this->execute('INSERT INTO '.$tableName.' (dump) VALUES ("")');
    	$lastInsertId = $this->lastInsertId();
		return $lastInsertId;
    }

    public function updateUserResponseTable($tableName ,$columnName, $value, $id) {
    	$query = $this->execute('UPDATE '.$tableName.' SET '.$columnName.' = "'.$value.'"
    							WHERE tbl_id = '.$id.'');
    	return $query;
    }

    public function updateLocation($tableName , $value, $id) {
    	$query = $this->execute('UPDATE '.$tableName.' SET latitude = '.$value['lat'].', longitude = '.$value['long'].'
    							WHERE tbl_id = '.$id.'');
    	return $query;
    }

    public function getDateFromUserResponseTable($tableName){
    	$result = $this->query('SELECT * FROM '.$tableName.'');
    	return $result;
    }

    Public function getmobileSurveyList($id){
    	$result = $this->query('SELECT survey_name, mobi_survey_id FROM mobilequestion WHERE status = 1 AND user_id = '.$id.' GROUP BY mobi_survey_id');
    	return $result;
    }

    Public function getmobileSurveyQuestion($mobi_survey_id){
    	$result = $this->query('SELECT * FROM mobilequestion WHERE mobi_survey_id = '.$mobi_survey_id.'');
    	$query = $this->execute('UPDATE mobilequestion SET status = 0 WHERE mobi_survey_id = '.$mobi_survey_id.'');
    	return $result;
    }

    Public function deleteMobileSurveyQuestion($mobi_survey_id){
    	$result = $this->query('DELETE FROM mobilequestion WHERE mobi_survey_id = '.$mobi_survey_id.'');
    	return $result;
    }

    Public function getmobileSurveyAnswer($mobi_survey_id, $question_options_id){
    	$result = $this->query('SELECT * FROM mobileanswer WHERE mobi_survey_id = '.$mobi_survey_id.' AND question_options_id = '.$question_options_id.'');
    	return $result;
    }

    Public function deleteMobileSurveyAnswer($mobi_survey_id){
    	$result = $this->query('DELETE FROM mobileanswer WHERE mobi_survey_id = '.$mobi_survey_id.'');
    	return $result;
    }
}

?>
