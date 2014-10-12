<script type="text/javascript" src="static/assets/static/psMathStats.js"></script>
<script type="text/javascript" src="static/assets/jquery/dist/jquery.min.js"></script>

<script type="text/javascript">
	var numericArray = [100,545,55,66,8,45,95,75];


	    var miscArray = [];
	    for (var i = 0; i < 8; i++) {
	        miscArray.push(
	            'set_1','set_2','set_3','set_4','set_5','set_6','set_7','set_8'
	        );
	    }


	    var perf = function (msg, fn) {
	        var start = +new Date();
	        var value = fn();
	        var duration = +new Date() - start,
	            speedClass;

	        switch (typeof value) {
	            case "object":
	                value = JSON.stringify(value);
	                break;
	            case "undefined":
	                value = "";
	                break;
	        }

	        switch (true) {
	            case (duration < 10):
	                speedClass = "veryFast";
	                break;
	            case (duration < 50):
	                speedClass = "fast";
	                break;
	            case (duration < 100):
	                speedClass = "slow";
	                break;
	            default:
	                speedClass = "verySlow";
	                break;
	        }

	        var durationLabel = ' <span class="speed '+ speedClass +'">(' + duration + 'ms)</span>';
	        $('#results').append('<li>' + msg + durationLabel + ': ' + value);
	    };

	    $(document).ready(function () {
	        perf("Total time", function () {
	            // Variance
	            perf("Variance, no sampling (" + numericArray.length + " values)", function () {
	                return numericArray.variance();
	            });

	            perf("Variance, 10000 samples", function () {
	                return numericArray.variance(10000);
	            });

	            perf("Variance, 1000 samples", function () {
	                return numericArray.variance(1000);
	            });

	            // Variance
	            perf("Standard Deviation, no sampling (" + numericArray.length + " values)", function () {
	                return numericArray.stdDev();
	            });

	            perf("Standard Deviation, 10000 samples", function () {
	                return numericArray.stdDev(10000);
	            });

	            perf("Standard Deviation, 1000 samples", function () {
	                return numericArray.stdDev(1000);
	            });

	            // Max
	            perf("Max, no sampling (" + numericArray.length + " values)", function () {
	                return numericArray.max();
	            });

	            perf("Max, 10000 samples", function () {
	                return numericArray.max(10000);
	            });

	            perf("Max, 1000 samples", function () {
	                return numericArray.max(1000);
	            });

	            // Min
	            perf("Min, no sampling (" + numericArray.length + " values)", function () {
	                return numericArray.min();
	            });

	            perf("Min, 10000 samples", function () {
	                return numericArray.min(10000);
	            });

	            perf("Min, 1000 samples", function () {
	                return numericArray.min(1000);
	            });

	            // Median
	            perf("Median, no sampling (" + numericArray.length + " values)", function () {
	                return numericArray.median();
	            });

	            perf("Median, 10000 samples", function () {
	                return numericArray.median(10000);
	            });

	            perf("Median, 1000 samples", function () {
	                return numericArray.median(1000);
	            });

	            // Percentile
	            perf("Percentile, no sampling (" + numericArray.length + " values)", function () {
	                return numericArray.percentile(0.50);
	            });

	            perf("Percentile, 10000 samples", function () {
	                return numericArray.percentile(0.50, 10000);
	            });

	            perf("Percentile, 1000 samples", function () {
	                return numericArray.percentile(0.50, 1000);
	            });

	            // Mean
	            perf("Mean, no sampling (" + numericArray.length + " values)", function () {
	                return numericArray.mean();
	            });

	            perf("Mean, 10000 samples", function () {
	                return numericArray.mean(10000);
	            });

	            perf("Mean, 1000 samples", function () {
	                return numericArray.mean(1000);
	            });

	            // Histogram
	            perf("Histogram, no sampling (" + numericArray.length + " values)", function () {
	                return miscArray.histogram();
	            });

	            perf("Histogram, 10000 samples", function () {
	                return miscArray.histogram(10000);
	            });

	            perf("Histogram, 1000 samples", function () {
	                return miscArray.histogram(1000);
	            });

	            // countByType
	            perf("countByType, no sampling (" + numericArray.length + " values)", function () {
	                return miscArray.countByType();
	            });

	            perf("countByType, 10000 samples", function () {
	                return miscArray.countByType(10000);
	            });

	            perf("countByType, 1000 samples", function () {
	                return miscArray.countByType(1000);
	            });
	        });
	    });
</script>
<ul id="results"></ul>
