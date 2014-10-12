<?php include('default_header.php'); ?>
    <div class="container theme-showcase">
    	<hr>
        <div class="jumbotron">

        	<div class="container">
	        	<div class="col-sm-3">
		            <div class="nn panel panel-primary">
		                <div class="panel-heading">
		                	<?php
		                	include('annotationChart.php');
		                		if($userdata['value']->image!=null){
		                			echo '<img data-src="holder.js/200x200" class="img-thumbnail" alt="200x200"
						                  	src="/static/assets/UserImages/'.$userdata['value']->image.'.jpg"
						                  	style="width: 200px; height: 200px;">';
		                		}else{
		                			echo '<img data-src="holder.js/200x200" class="img-thumbnail" alt="200x200"
						                  	src="/static/assets/UserImages/Default/profile.png"
						                  	style="width: 200px; height: 200px;">';
		                		}
		                		echo "<hr>";
		                  		echo '<i class="glyphicon glyphicon-user"></i>
		                  				<a href="#" class="editable" id="name" data-type="text" data-pk='.$userdata['value']->user_id.'>'
		                  				.$userdata['value']->name.'
		                  				</a><br>
		                  			<i class="glyphicon glyphicon-phone"></i>
		                  				<a href="#" class="editable" id="phone_number" data-type="text" data-pk='.$userdata['value']->user_id.'>'
		                  				.$userdata['value']->phone_number.'
		                  				</a><br>
		                  			<i class="glyphicon glyphicon-envelope"></i>
		                  				<a href="#" class="not-editable" id="email" data-type="text" data-pk='.$userdata['value']->user_id.'>'
		                  				.$userdata['value']->email.'
		                  				</a><br>';
		                  	?>
		                  	<hr>
		                  	<br>
		                  	<br>
		                  	<br>
		                  	<br>
		                  	<br>
		                </div>
		            </div>
		        </div>
		        <div class="col-sm-9">
		            <div class="panel panel-primary">
		                <div class="panel-heading">
		                	Activity Graph
		                </div>
		                <div class="panel-body">
		                	<div id='chart_div' style='width: 600px; height: 400px;'></div>
		                </div>
		            </div>
		        </div>
		    </div>
    </div>
</div>
<?php include('footer.php'); ?>
