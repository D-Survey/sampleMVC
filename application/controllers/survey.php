<?php

    class Survey extends Controller {

        function index(){
            if( isset($_SESSION['survey_sections_id'])) {
                $_SESSION['survey_sections_id'] = null;
            }
            $template = $this->loadView('survey_view');
            $this->getSurveyHeader($template);
            $template->render();
        }

        function getSurveySection(){
            if( isset($_SESSION['survey_sections_id'])) {
                $_SESSION['survey_sections_id'] = null;
            }
            $survey = $this->loadModel('survey_model');
            $surveySectionData = $survey->surveySectionById($_POST['survey_sections_id']);
            echo json_encode($surveySectionData);
        }

        function getSurveyHeader($template){
            if( isset($_SESSION['survey_sections_id'])) {
                $_SESSION['survey_sections_id'] = null;
            }
            $survey = $this->loadModel('survey_model');
            $surveyHeaderData = $survey->surveyHeader();
            $surveySectionData = $survey->surveySection($template);
            $existingSurveyData = $survey->getMySurvey($_SESSION['user_id']);
            $template->set('surveyHeaderData', $surveyHeaderData);
            $template->set('surveySectionData', $surveySectionData);
            $template->set('existingSurveyData', $existingSurveyData);
        }

        function getPreDesignSurvey(){
            if( isset($_SESSION['survey_sections_id'])) {
                $_SESSION['survey_sections_id'] = null;
            }
            $template = $this->loadView('question_view');
            $survey = $this->loadModel('survey_model');
            $questionData = $survey->question($_POST['survey_sections_id']);
            $answersData = $survey->answer();
            $_SESSION['created_date'] = strtotime(date('d-m-Y H:i:s'));
            $_SESSION['sections_name'] = $_POST['sections_name'];
            $_SESSION['survey_sections_id'] = $_POST['survey_sections_id'];
            $lastInsertId = $survey->createSurvey($_SESSION);
            $template->set('survey_collection_id', $lastInsertId);
            $template->set('questionData', $questionData);
            $template->set('answersData', $answersData);
            $template->render();
        }

        function responseSurveyView(){
            $template = $this->loadView('my_survey_view');
            $survey = $this->loadModel('survey_model');
            $questionData = $survey->question($_SESSION['survey_sections_id']);
            $answersData = $survey->answer();

            //audit the user activity
            $user = $this->loadModel('user_model');
            $userdata['user_id'] = $_SESSION['user_id'];
            $userdata['action_type'] = 'success';
            $userdata['entity_type'] = 'Create Survey';
            $userdata['time_stamp'] = strtotime(date('d-m-Y H:i:s'));
            $userdata['action_by'] = $_SESSION['user_id'];
            $auditData = $user->auditUpdate($userdata);

            //end
            //create user responce advance table
            $tlb_userResponse = $survey->userResponseTable('tbl_'.$_POST['survey_collection_id']);

            foreach ($questionData as $key => $value) {
                //alter user responce advance table
                if( $questionData[$key]->option_choice_id == 1 || $questionData[$key]->option_choice_id == 2 ||
                    $questionData[$key]->option_choice_id == 4 ) {
                    $dataType = "varchar(250)";
                } elseif ( $questionData[$key]->option_choice_id == 3 ) {
                    $dataType = "int";
                }
                $tlb_alterUserResponse = $survey->alterUserResponseTable('tbl_'.$_POST['survey_collection_id'], 'column_'.$questionData[$key]->questions_id, $dataType);

                foreach ($answersData as $key_1 => $value) {
                    if($questionData[$key]->question_options_id==$answersData[$key_1]->question_options_id){
                        $data['survey_collection_id'] = $_POST['survey_collection_id'];
                        $data['questions_id'] = $questionData[$key]->questions_id;
                        $data['answer_id'] = $answersData[$key_1]->answer_id;
                        $surveyData = $survey->createResponseSurvey($data);
                    }
                }
            }
            $_SESSION['survey_sections_id'] = null;
            $userdata = $user->findById($_SESSION['user_id']);
            $template->set('userdata', $userdata);
            $mySurveyData = $survey->getMySurvey($_SESSION['user_id']);
            $template->set('mySurveyData', $mySurveyData);
            $template->render();
        }
        function mySurveyView(){
            if( isset($_SESSION['survey_sections_id'])) {
                $_SESSION['survey_sections_id'] = null;
            }
            $template = $this->loadView('my_survey_view');
            $survey = $this->loadModel('survey_model');
            $user = $this->loadModel('user_model');
            $userdata = $user->findById($_SESSION['user_id']);
            $template->set('userdata', $userdata);
            $mySurveyData = $survey->getMySurvey($_SESSION['user_id']);
            $template->set('mySurveyData', $mySurveyData);
            $template->render();
        }

        function notificationView(){
            $template = $this->loadView('notification');
            $survey = $this->loadModel('survey_model');
            $mySurveyData = $survey->getOthersSurvey($_SESSION['user_id']);
            $template->set('mySurveyData', $mySurveyData);
            $template->render();
        }

        function getSurvey($id){
            if( isset($_SESSION['survey_sections_id'])) {
                $_SESSION['survey_sections_id'] = null;
            }
            $template = $this->loadView('survey_question_view');
            $survey = $this->loadModel('survey_model');
            $surveyQuestionData = $survey->getSurveyQuestion($id);
            $questionData = $survey->question($surveyQuestionData[0]->survey_sections_id);

            $answersData = $survey->answer();
            $template->set('questionData', $questionData);
            $template->set('answersData', $answersData);
            $template->set('surveyQuestionData', $surveyQuestionData);
            $template->render();
        }

        function dataCollection($id){
            $survey = $this->loadModel('survey_model');

            if (isset($_SESSION['user_id'])) {
                $template = $this->loadView('my_survey_view');
                $user = $this->loadModel('user_model');
                $userdata = $user->findById($_SESSION['user_id']);
                $template->set('userdata', $userdata);
                $mySurveyData = $survey->getMySurvey($_SESSION['user_id']);
                $template->set('mySurveyData', $mySurveyData);
            } else {
                $template = $this->loadView('thanks');
            }

            if( isset($_SESSION['survey_sections_id'])) {
                $_SESSION['survey_sections_id'] = null;
            }


            //insert null value user response table
            $tbl_Id = $survey->insertUserResponseTable('tbl_'.$id);

            //unset location from post
            $location['lat'] = $_POST['latitute'];
            $location['long'] = $_POST['longitute'];
            unset($_POST['latitute']);
            unset($_POST['longitute']);

            foreach ($_POST as $key => $value) {
                $data['fld'] = $key;
                $data['value'] = $value;
                $userSurveyData = $survey->responseByUser($id, $data);

                //add data to user response table
                $questionsId = $survey->getQuestionIdByIds($id, $data);
                $answerText = $survey->answerById($key);
                $userResponseData = $survey->updateUserResponseTable('tbl_'.$id, 'column_'.$questionsId[0]->questions_id, $answerText[0]->answer_text, $tbl_Id);
            }
            //Update Location
            $survey->updateLocation('tbl_'.$id, $location,  $tbl_Id);
            $template->render();
        }

        function deleteSurvey($id){
            /*if( isset($_SESSION['survey_sections_id'])) {
                $_SESSION['survey_sections_id'] = null;
            }*/
            $template = $this->loadView('my_survey_view');
            $survey = $this->loadModel('survey_model');
            $user = $this->loadModel('user_model');
            $deleteDataCollectionData = $survey->deleteDataCollectionById($id);
            $deleteSurveyCollectionData = $survey->deleteSurveyCollectionById($id);

            //remove user Response Table
            $survey->removeUserResponseTable('tbl_'.$id);

            $userdata = $user->findById($_SESSION['user_id']);
            $template->set('userdata', $userdata);
            $mySurveyData = $survey->getMySurvey($_SESSION['user_id']);
            $template->set('mySurveyData', $mySurveyData);
            $template->render();
        }

        function editSurvey($id){

            if( isset($_SESSION['survey_sections_id'])) {
                $_SESSION['survey_sections_id'] = null;
            }
            $template = $this->loadView('exist_question_view');
            $survey = $this->loadModel('survey_model');
            $surveyQuestionData = $survey->getSurveyQuestion($id);
            $questionData = $survey->question($surveyQuestionData[0]->survey_sections_id);

            $answersData = $survey->answer();
            $template->set('questionData', $questionData);
            $template->set('answersData', $answersData);
            $template->set('surveyQuestionData', $surveyQuestionData);
            $template->render();
        }

        function reportSurvey($id){
            /*if( isset($_SESSION['survey_sections_id'])) {
                $_SESSION['survey_sections_id'] = null;
            }
            $template = $this->loadView('survey_report_view');
            $survey = $this->loadModel('survey_model');
            $surveyQuestionData = $survey->getSurveyQuestion($id);

            $_SESSION['survey_sections_id'] = $surveyQuestionData[0]->survey_sections_id;
            $_SESSION['survey_collection_id'] = $id;

            $questionData = $survey->question($surveyQuestionData[0]->survey_sections_id);
            $answersData = $survey->answer();
            $reportData = $survey->getReportDataById($id);
            $template->set('questionData', $questionData);
            $template->set('answersData', $answersData);
            $template->set('surveyQuestionData', $surveyQuestionData);
            $template->set('reportData', $reportData);
            $template->render();*/

            if( isset($_SESSION['survey_sections_id'])) {
                $_SESSION['survey_sections_id'] = null;
            }
            $template = $this->loadView('analysisReport');
            $survey = $this->loadModel('survey_model');
            $surveyQuestionData = $survey->getSurveyQuestion($id);

            $_SESSION['survey_sections_id'] = $surveyQuestionData[0]->survey_sections_id;
            $_SESSION['survey_collection_id'] = $id;

            $questionData = $survey->question($surveyQuestionData[0]->survey_sections_id);
            $answersData = $survey->answer();
            $reportData = $survey->getReportDataById($id);
            $template->set('questionData', $questionData);
            $template->set('answersData', $answersData);
            $template->set('surveyQuestionData', $surveyQuestionData);
            $template->set('reportData', $reportData);

            $template->render();
        }
        //commented for create new alternation
        /*function reportSurveyByQuestion($id){
            $survey = $this->loadModel('survey_model');
            $template = $this->loadView('report_view');
            $answersDataByQuestionId = $survey->answerByQuestionId($id);
            $questionDataById = $survey->questionById($id);
            $reportData = $survey->getReportDataByIdById($_SESSION['survey_collection_id'], $id);

            $_SESSION['survey_sections_id'] = null;
            $_SESSION['survey_collection_id'] = null;

            $template->set('answersDataByQuestionId', $answersDataByQuestionId);
            $template->set('questionDataById', $questionDataById);
            $template->set('reportData', $reportData);
            $template->render();
        }*/

        function createNewSurvey(){
            $survey = $this->loadModel('survey_model');
            $template = $this->loadView('create_question_view');
            $visibleQuestion = false;
            $surveyData = array();
            $surveyData['user_id'] = $_SESSION['user_id'];
            if( isset( $_POST['sections_name']) ) {
                $surveyData['sections_name'] = $_POST['sections_name'];
                $surveyData['survey_header_id'] = $_POST['survey_header_id'];
            } else {
                $surveyData['sections_name'] = $_SESSION['sections_name'];
                $surveyData['survey_header_id'] = $_SESSION['survey_header_id'];
            }
            $template->set('surveyData', $surveyData);

            //get new survey view
            if( isset($_SESSION['survey_sections_id'])) {
                if( $_SESSION['survey_sections_id'] != null ) {
                    $questionData = $survey->question($_SESSION['survey_sections_id']);
                    $answersData = $survey->answer();
                    $visibleQuestion = true;

                    $template->set('questionData', $questionData);
                    $template->set('answersData', $answersData);
                }
            }

            //audit the user activity
            $user = $this->loadModel('user_model');
            $userdata['user_id'] = $_SESSION['user_id'];
            $userdata['action_type'] = 'success';
            $userdata['entity_type'] = 'Create Survey';
            $userdata['time_stamp'] = strtotime(date('d-m-Y H:i:s'));
            $userdata['action_by'] = $_SESSION['user_id'];
            $auditData = $user->auditUpdate($userdata);
            //end
            $template->set('visibleQuestion', $visibleQuestion);
            $template->render();
        }

        function useExistSurvey(){
            /*if( isset($_SESSION['survey_sections_id'])) {
                $_SESSION['survey_sections_id'] = null;
            }*/
            $survey = $this->loadModel('survey_model');
            $template = $this->loadView('exist_question_view');

            $surveyData['sections_name'] = $_POST['sections_name'];
            $surveyData['user_id'] = $_SESSION['user_id'];
            $surveyData['created_date'] = strtotime(date('d-m-Y H:i:s'));
            $surveyData['created_by'] = $_SESSION['user_id'];
            $surveyData['modified_date'] = strtotime(date('d-m-Y H:i:s'));
            $surveyData['modified_by'] = $_SESSION['user_id'];
            $surveyData['survey_sections_id'] = $_POST['survey_sections_id'];
            $_SESSION['survey_sections_id'] = $surveyData['survey_sections_id'];
            /*var_dump();
            exit();*/
            $questionData = $survey->question($_POST['survey_sections_id']); //get question by select option
            $answersData = $survey->answer();
            $surveyData['survey_collection_id'] = $survey->createSurvey($surveyData);

            /*disable for first stage*/
            /*if($questionData->question_options_id == $questionData->question_options_id){
                var_dump($questionData);
            }

            $surveyData['survey_collection_id'] = $survey->createSurvey($surveyData);
            $surveyData['option_group_id'] = 1;
            $surveyData['input_type_id'] = 1;
            $surveyData['answer_required_state'] = 1;
            $surveyData['allow_multiple_answer_state'] = 0;
            $surveyData['answer_state'] = 1;
            $surveyData['unit_of_measures_id'] = 1;
            for($i = 0; $i < sizeof( $_POST['question']); $i++) {
                if(isset($_POST['subText'])) {
                    $surveyData['questions_subtext'] = $_POST['subText'][0];
                }
                $surveyData['questions_name'] = $_POST['question'][$i];
                $surveyData['option_choice_id'] = $_POST['option_choice_id'];
                $surveyData['questions_id'] = $survey->insertQuestion($surveyData);
                $surveyData['question_options_id'] = $survey->questionOptions($surveyData);

                for($j = 0; $j < sizeof( $_POST['answer']); $j++) {
                    $surveyData['answer_text'] = $_POST['answer'][$j];
                    $surveyData['answer_id'] = $survey->insertAnswer($surveyData);
                    $surveyData['data_collection_id'] = $survey->createResponseSurvey($surveyData);
                }
            }
            $template->set('surveyData', $surveyData);

            $questionData = $survey->question($surveyData['survey_sections_id']);
            $answersData = $survey->answer();
            $template->set('questionData', $questionData);
            $template->set('answersData', $answersData);
            */

            $template->set('questionData', $questionData);
            $template->set('answersData', $answersData);
            $template->set('surveyData', $surveyData);
            $template->render();
        }

        function addNewQuestion() { //create new survey add question
            $survey = $this->loadModel('survey_model');
            $template = $this->loadView('create_question_view');
            $surveyData = $_POST;
            $surveyData['created_date'] = strtotime(date('d-m-Y H:i:s'));
            $surveyData['created_by'] = $_POST['user_id'];
            $surveyData['modified_date'] = strtotime(date('d-m-Y H:i:s'));
            $surveyData['modified_by'] = $_POST['user_id'];
            $surveyData['sections_name'] = $_POST['sections_name'];
            $surveyData['survey_header_id'] = $_POST['survey_header_id'];

            $_SESSION['sections_name'] = $surveyData['sections_name'];
            $_SESSION['user_id'] = $surveyData['user_id'];
            $_SESSION['survey_header_id'] = $surveyData['survey_header_id'];

            if( isset($_SESSION['survey_sections_id'])) {
                if( $_SESSION['survey_sections_id'] == null ) {
                    $surveyData['survey_sections_id'] = $survey->insertSurveySectionByheaderId($surveyData);
                    $surveyData['survey_collection_id'] = $survey->createSurvey($surveyData);
                    $_SESSION['survey_sections_id'] = $surveyData['survey_sections_id'];
                    $_SESSION['survey_collection_id'] = $surveyData['survey_collection_id'];
                } else {
                    $surveyData['survey_sections_id'] = $_SESSION['survey_sections_id'];
                    $surveyData['survey_collection_id'] = $_SESSION['survey_collection_id'];
                }
            } else if ( !isset($_SESSION['survey_sections_id']) ) {
                $surveyData['survey_sections_id'] = $survey->insertSurveySectionByheaderId($surveyData);
                $surveyData['survey_collection_id'] = $survey->createSurvey($surveyData);
                $_SESSION['survey_sections_id'] = $surveyData['survey_sections_id'];
                $_SESSION['survey_collection_id'] = $surveyData['survey_collection_id'];
            }


            $surveyData['option_group_id'] = 1;
            $surveyData['input_type_id'] = 1;
            $surveyData['answer_required_state'] = 1;
            $surveyData['allow_multiple_answer_state'] = 0;
            $surveyData['answer_state'] = 1;
            $surveyData['unit_of_measures_id'] = 1;
            for($i = 0; $i < sizeof( $_POST['question']); $i++) {
                if(isset($_POST['subText'])) {
                    $surveyData['questions_subtext'] = $_POST['subText'][0];
                }
                $surveyData['questions_name'] = $_POST['question'][$i];
                $surveyData['option_choice_id'] = $_POST['option_choice_id'];
                $surveyData['questions_id'] = $survey->insertQuestion($surveyData);
                $surveyData['question_options_id'] = $survey->questionOptions($surveyData);

                for($j = 0; $j < sizeof( $_POST['answer']); $j++) {
                    $surveyData['answer_text'] = $_POST['answer'][$j];
                    $surveyData['answer_id'] = $survey->insertAnswer($surveyData);
                    $surveyData['data_collection_id'] = $survey->createResponseSurvey($surveyData);
                }
            }
            $template->set('surveyData', $surveyData);

            $questionData = $survey->question($surveyData['survey_sections_id']);
            $answersData = $survey->answer();
            $template->set('questionData', $questionData);
            $template->set('answersData', $answersData);

            $visibleQuestion = true;
            $template->set('visibleQuestion', $visibleQuestion);
            $template->render();
        }

        function SessionRemove(){
            $survey_collection_id = $_SESSION['survey_collection_id'];

            //create user responce advance table
            $survey = $this->loadModel('survey_model');
            $questionData = $survey->question($_SESSION['survey_sections_id']);
            $tlb_userResponse = $survey->userResponseTable('tbl_'.$survey_collection_id);

            foreach ($questionData as $key => $value) {
                //alter user responce advance table
                if( $questionData[$key]->option_choice_id == 1 || $questionData[$key]->option_choice_id == 2 ||
                    $questionData[$key]->option_choice_id == 4 ) {
                    $dataType = "varchar(250)";
                } elseif ( $questionData[$key]->option_choice_id == 3 ) {
                    $dataType = "int";
                }
                $tlb_alterUserResponse = $survey->alterUserResponseTable('tbl_'.$survey_collection_id, 'column_'.$questionData[$key]->questions_id, $dataType);
            }

            if( isset($_SESSION) ) {
                $_SESSION['sections_name'] = null;
                $_SESSION['survey_header_id'] = null;
                $_SESSION['survey_collection_id'] = null;
            }
            $template = $this->loadView('my_survey_view');
            $user = $this->loadModel('user_model');
            $userdata = $user->findById($_SESSION['user_id']);
            $template->set('userdata', $userdata);
            $mySurveyData = $survey->getMySurvey($_SESSION['user_id']);
            $template->set('mySurveyData', $mySurveyData);
            $template->render();
        }


    }
?>
