<?php
    foreach ($data as $key => $value) {
        $temp[$key] = ",['".$data_2[$key]->answer_text."', ".$data[$key]->collection_value."]";
    }
?>
<head>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>

    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([['data', 'value']<?php echo implode(" ",$temp);?>]);

        var options = {
            title: '<?php echo $data_1[0]->questions_name;?>',
            width: 400,
            height: 240,
            bar: {groupWidth: "95%"},
            legend: { position: "none" },
            is3D: true
        };

        var chart = new google.visualization.BarChart(document.getElementById('barchart'));
        chart.draw(data, options);
      }
    </script>
</head>
