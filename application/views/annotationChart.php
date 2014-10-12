<script type='text/javascript' src='http://www.google.com/jsapi'></script>
    <script type='text/javascript'>
        google.load('visualization', '1.5', {'packages':['annotationchart']});
        google.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = new google.visualization.DataTable();
            data.addColumn('date', 'Date');
            data.addColumn('number', 'Kepler-22b mission');
            data.addColumn('string', 'Kepler title');
            data.addColumn('string', 'Kepler text');
            data.addColumn('number', 'Gliese 163 mission');
            data.addColumn('string', 'Gliese title');
            data.addColumn('string', 'Gliese text');
            data.addRows([
              [new Date(2014, 2, 15), 12400, 'login', 'logOut',
                                      10645, 'login', 'logOut'],
              [new Date(2014, 2, 16), 24045, 'login', 'logOut',
                                      12374, 'login', 'logOut'],
              [new Date(2014, 2, 17), 35022, 'login', 'logOut',
                                      15766, 'login', 'logOut'],
              [new Date(2014, 2, 18), 12284, 'login', 'logOut',
                                      34334, 'login', 'logOut'],
              [new Date(2014, 2, 19), 8476, 'login', 'logOut',
                                      66467, 'login', 'logOut'],
              [new Date(2014, 2, 20), 0, 'login', 'logOut',
                                      79463, 'login', 'logOut']
            ]);

            var chart = new google.visualization.AnnotationChart(document.getElementById('chart_div'));

            var options = {
              displayAnnotations: true,
            };

            chart.draw(data, options);
        }
</script>
