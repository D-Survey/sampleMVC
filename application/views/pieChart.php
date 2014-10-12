<?php

foreach ($data as $key => $value) {
    $temp[$key] = ",['".$data_answer[$key]->answer_text."', ".$data[$key]->collection_value."]";
}
?>
<head>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script>
        google.load("visualization", "1", {packages:["corechart"]});
        google.setOnLoadCallback(drawChart);

        function drawChart() {
            var data = google.visualization.arrayToDataTable([['data', 'value']<?php echo implode(" ",$temp);?>]);
            var options = {
                width: 400,
                height: 240,
                title: '<?php echo $questionName;?>',
                is3D: true
            };
            var container = document.getElementById('<?php echo $data[$key]->questions_id;?>');
            var chart = new google.visualization.PieChart(container);
            chart.draw(data, options);
            $('.analyse-chart').show();
        }
    </script>
</head>
<?php

/*foreach ($data as $key_value => $value) {
    $lable[$key_value] = '"'.$data_answer[$key_value]->answer_text.'"';
    $valueArray[$key_value] = $data[$key_value]->collection_value;
}
var_dump(array_keys($valueArray, max($valueArray)));*/
?>
<script src="/static/assets/static/psMathStats.js"></script>
<script src="/static/assets/jquery/dist/jquery.min.js"></script>
<script>
    /*var lable = [<?php echo implode(", ",$lable);?>];
    var valueArray = [<?php echo implode(", ",$valueArray);?>];
    console.log(valueArray.sortNumber(true));*/

</script>
