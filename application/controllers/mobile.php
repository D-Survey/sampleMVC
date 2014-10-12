<?php

class Mobile extends Controller {

	function index(){
        $template = $this->loadView('Mobile/main');
        $survey = $this->loadModel('survey_model');
        $mobSurveyData = $survey->getmobileSurveyList($_SESSION['user_id']);
        $template->set('mobSurveyData', $mobSurveyData);
        $template->render();
    }

    function addSurvey($id){
    	$template = $this->loadView('Mobile/main');
    	$survey = $this->loadModel('survey_model');
    	$surveyData = array();
        $surveyData['user_id'] = $_SESSION['user_id'];
        $questionData = $survey->getmobileSurveyQuestion($id);

        $surveyData['created_date'] = strtotime(date('d-m-Y H:i:s'));
        $surveyData['created_by'] = $questionData[0]->user_id;
        $surveyData['modified_date'] = strtotime(date('d-m-Y H:i:s'));
        $surveyData['modified_by'] = $questionData[0]->user_id;
        $surveyData['sections_name'] = $questionData[0]->sections_name;
        $surveyData['survey_header_id'] = 7;

        $surveyData['survey_sections_id'] = $survey->insertSurveySectionByheaderId($surveyData);
        $surveyData['survey_collection_id'] = $survey->createSurvey($surveyData);

        $surveyData['option_group_id'] = 1;
        $surveyData['input_type_id'] = 1;
        $surveyData['answer_required_state'] = 1;
        $surveyData['allow_multiple_answer_state'] = 0;
        $surveyData['answer_state'] = 1;
        $surveyData['unit_of_measures_id'] = 1;

        for($i = 0; $i < sizeof($questionData); $i++) {
            $surveyData['questions_subtext'] = $questionData[$i]->questions_subtext;
            $surveyData['questions_name'] = $questionData[$i]->questions_name;
            $surveyData['option_choice_id'] = $questionData[$i]->input_type_id;
            $surveyData['questions_id'] = $survey->insertQuestion($surveyData);
            $surveyData['question_options_id'] = $survey->questionOptions($surveyData);

            $answersData =  $survey->getmobileSurveyAnswer($id, $questionData[$i]->questions_id);
            for($j = 0; $j < sizeof( $answersData); $j++) {
                $surveyData['answer_text'] = $answersData[$j]->answer_text;
                $surveyData['answer_id'] = $survey->insertAnswer($surveyData);
                $surveyData['collection_value'] = $answersData[$j]->collection_value;
                $surveyData['data_collection_id'] = $survey->createResponseSurveyWithValue($surveyData);
            }
        }

        $mobSurveyData = $survey->getmobileSurveyList($_SESSION['user_id']);
        $template->set('mobSurveyData', $mobSurveyData);
        $template->render();
    }

    function deleteSurvey($id){
    	$survey = $this->loadModel('survey_model');
		$survey->getmobileSurveyAnswer($id);
		$survey->deleteMobileSurveyQuestion($id);

		$mobSurveyData = $survey->getmobileSurveyList($_SESSION['user_id']);
		$template = $this->loadView('Mobile/main');
        $template->set('mobSurveyData', $mobSurveyData);
        $template->render();
    }
}

?>
