<?php

    class Cloud extends Controller {

        function index(){
            $template = $this->loadView('cloud/main');
            $survey = $this->loadModel('survey_model');
            $mySurveyData = $survey->getMySurvey($_SESSION['user_id']);
            $template->set('mySurveyData', $mySurveyData);
            $template->render();
        }

        function getData($id, $survey){
            $data = $survey->getDateFromUserResponseTable('tbl_'.$id);

            return $data;
        }

        function exportExcel($id){
            $survey = $this->loadModel('survey_model');

            $data = $this->getData($id, $survey);
            foreach ($data as $key => $value) {
                unset($data[$key]->dump);
                unset($data[$key]->tbl_id);

                $locationData[$key]['lat'] = $data[$key]->latitude;
                $locationData[$key]['long'] = $data[$key]->longitude;
                unset($data[$key]->latitude);
                unset($data[$key]->longitude);

                $array[$key] =  (array) $data[$key];

                //get question text
                foreach (array_values($array[$key]) as $i => $value) {
                    $temp = str_replace("column_","",array_search($value, $array[$key]));
                    $question_text = $survey->questionNameById($temp);
                    $singleDataArray[$question_text[0]->questions_name] = $value;
                }
                $singleDataArray['latitude'] = $locationData[$key]['lat'];
                $singleDataArray['longitude'] = $locationData[$key]['long'];
                $exportData[] = $singleDataArray;
            }
            //var_dump($exportData);

            function cleanData(&$str){
                $str = preg_replace("/\t/", "\\t", $str);
                $str = preg_replace("/\r?\n/", "\\n", $str);
                if(strstr($str, '"')) $str = '"' . str_replace('"', '""', $str) . '"';
            }

            // file name for download
            $file = $survey->getSurveyTitle($id);
            $filename = $file[0]->sections_name."_". date('Ymd') . ".xls";

            header("Content-Disposition: attachment; filename=\"$filename\"");
            header("Content-Type: application/vnd.ms-excel");

            $flag = false;
            foreach($exportData as $row) {
                if(!$flag) {
                  // display field/column names as first row
                  echo implode("\t", array_keys($row)) . "\n";
                  $flag = true;
                }
                array_walk($row, 'cleanData');
                echo implode("\t", array_values($row)) . "\n";
            }

            exit;
        }

        function exportCSV($id){
            $survey = $this->loadModel('survey_model');

            $data = $this->getData($id, $survey);
            foreach ($data as $key => $value) {
                unset($data[$key]->dump);
                unset($data[$key]->tbl_id);

                $locationData[$key]['lat'] = $data[$key]->latitude;
                $locationData[$key]['long'] = $data[$key]->longitude;
                unset($data[$key]->latitude);
                unset($data[$key]->longitude);

                $array[$key] =  (array) $data[$key];

                //get question text
                foreach (array_values($array[$key]) as $i => $value) {
                    $temp = str_replace("column_","",array_search($value, $array[$key]));
                    $question_text = $survey->questionNameById($temp);
                    $singleDataArray[$question_text[0]->questions_name] = $value;
                }
                $singleDataArray['latitude'] = $locationData[$key]['lat'];
                $singleDataArray['longitude'] = $locationData[$key]['long'];
                $exportData[] = $singleDataArray;
            }

            function cleanData(&$str){
                if($str == 't') $str = 'TRUE';
                if($str == 'f') $str = 'FALSE';
                if(preg_match("/^0/", $str) || preg_match("/^\+?\d{8,}$/", $str) || preg_match("/^\d{4}.\d{1,2}.\d{1,2}/", $str)) {
                  $str = "'$str";
                }
                if(strstr($str, '"')) $str = '"' . str_replace('"', '""', $str) . '"';
            }

            // file name for download
            $file = $survey->getSurveyTitle($id);
            $filename = $file[0]->sections_name."_". date('Ymd') . ".csv";

            header("Content-Disposition: attachment; filename=\"$filename\"");
            header("Content-Type: text/csv");

            $out = fopen("php://output", 'w');

            $flag = false;
            foreach($exportData as $row) {
                if(!$flag) {
                  // display field/column names as first row
                  fputcsv($out, array_keys($row), ',', '"');
                  $flag = true;
                }
                array_walk($row, 'cleanData');
                fputcsv($out, array_values($row), ',', '"');
            }

            fclose($out);
            exit;
        }
    }
?>
