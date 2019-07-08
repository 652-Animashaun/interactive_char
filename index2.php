<?
ob_start();
error_reporting(0);

$dbconn=mysqli_connect("localhost", "root", "shaun89", "chartdata");
if(mysqli_connect_errno()) {
	echo mysqli_connect_errno("Database server is down at the moment.:("));
	exit();
}
$avr ='';
$quarter1 ='';
$quarter2 ='';
$quarter3 ='';
$quarter4 ='';

$sql = mysqli_query($dbconn, "SELECT * FROM average quarterly generation statistics for the year 2015");
while ($row=mysqli_fetch_array($sql)){
	$avr_label =$row['avr_label'];
	$Q1 =$row['Q1'];
	$Q2 =$row['Q2'];
	$Q3 =$row['Q3'];
	$Q4 =$row['Q4'];

	$avr = $avr.$avr_label.',';
	$quarter1 = $quarter1.$Q1.',';
	$quarter2 = $quarter1.$Q2.',';
	$quarter3 = $quarter1.$Q3.',';
	$quarter4 = $quarter1.$Q4.',';

}
$avr = trim($avr,",");
$quarter1 =trim($quarter1,",");
$quarter2 =trim($quarter2,",");
$quarter3 =trim($quarter3,",");
$quarter4 =trim($quarter4,",");
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Average Quarterly Generation Statistics</title>
		
		<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	</head>
	<body>
		<div class="container">
			<canvas id="myChart" width="400" height="400"></canvas>
			<script>
var ctx = document.getElementById('myChart').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
   labels: [<?php echo $avr; ?>],
    datasets: [{ 
        data: [<?php echo $quarter1; ?>],
        label: "Q1",
        borderColor: "#3e95cd",
        fill: false
      }, { 
        data: [<?php echo $quarter2; ?>],
        label: "Q2",
        borderColor: "#8e5ea2",
        fill: false
      }, { 
        data: [<?php echo $quarter3; ?>],
        label: "Q3",
        borderColor: "#3cba9f",
        fill: false
      }, { 
        data: [<?php echo $quarter4; ?>],
        label: "Q4",
        borderColor: "#e8c3b9",
        fill: false
      }
    ]
  },
  options: {
    title: {
      display: true,
      text: 'Average Quarterly Generation Statistics for the year 2015'
    },
    legend: {
    	display: false
    }
  }
});
</script>
		</div>
		
	</body>
</html>