<?php
session_start();

$conn = new mysqli("localhost", "root", "", "scores");
?>

<!-- Templates and tutorials followed to import mySQL to Google Charts via PHP:
 
https://php-guru.com/google-line-chart-php-mysql/
https://www.webslesson.info/2017/08/how-to-make-google-line-chart-by-using-php-json-data.html -->
<?php
    if (isset($_GET['main_id'])) {
        $main_id = $_GET['main_id'];
    } else {
        $error_message = "Main ID is missing.";
    }

    $stmt = $conn->prepare("SELECT time, wpm, spider, distance FROM timeseries WHERE main_id = ?");
    $stmt->bind_param("i", $main_id);
    $stmt->execute();
    $timeseries_result = $stmt->get_result();

    $timeseries_data = [];

    if ($timeseries_result->num_rows > 0) {
        while ($row = $timeseries_result->fetch_assoc()) {
            $timeseries_data[] = [
                'time' => $row['time'],
                'wpm' => $row['wpm'],
                'distance' => $row['distance'],
                'spider' => $row['spider']
            ];
        }
    } else {
        $error_message = "No timeseries data available.";
    }

    $stmt->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Spider Typer | Escape the Giant Spider!</title>
    <link rel="icon" type="image/jpeg" sizes="32x32" href="/assets/img/icon.png">
    <link href="https://fonts.cdnfonts.com/css/young-serif" rel="stylesheet">
    <link href="https://fonts.cdnfonts.com/css/literata-book" rel="stylesheet">
    <link href="https://fonts.cdnfonts.com/css/minagi-bristone" rel="stylesheet"> 
    <link rel="stylesheet" href="/assets/css/style.css" type="text/css">
    
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
    google.charts.load('current', {'packages':['corechart', 'line']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
        let data = new google.visualization.DataTable();
        data.addColumn('number', 'Time (seconds)');
        data.addColumn('number', 'WPM (wpm)');
        data.addColumn('number', 'Spider Speed (wpm)');
        data.addColumn('number', 'Distance (meters)');
        
        let timeseriesData = <?php echo json_encode($timeseries_data); ?>;
        for (let i = 0; i < timeseriesData.length; i++) {
            data.addRow([timeseriesData[i].time, timeseriesData[i].wpm, timeseriesData[i].distance, timeseriesData[i].spider]);
        }

        let options = {
            legend: { position: 'bottom' },
            backgroundColor: { fill:'rgb(192, 175, 216)' },
            chartArea: { width: '80%', height: '70%' },
            vAxes: {
                0: { 
                    title: 'WPM & Spider Speed (wpm)', 
                    minValue: 0 
                },
                1: { 
                    title: 'Distance (meters)', 
                    minValue: 0 
                }
            },
            hAxis: {
                title: 'Time (seconds)',
            },
            series: {
                0: { targetAxisIndex: 0 }, 
                2: { targetAxisIndex: 0 }, 
                1: { targetAxisIndex: 1 } 
            }
        };
        let chart = new google.visualization.LineChart(document.getElementById('line_chart'));
        chart.draw(data, options);
    }
</script>
</head>
<body id="results-body">
    <div class="popup-overlay">
        <div class="popup-menu" id="stats-popup">
            <div class="menu-contents">
                <div class="menu-header">
                    <h1 class="header-text"><span>Your stats</span></h1>
                    <button id="back-home" class="click-button">Play again</button>
                </div>
                <div class="menu-body">
                    <div class="stats-container">
                        <?php if (isset($_GET['main_id'])) {
                            $main_id = $_GET['main_id'];

                            $stmt = $conn->prepare("SELECT totaltime, maxwpm, spiderspeed, maxdistance, errors FROM main WHERE id = ?");
                            $stmt->bind_param("i", $main_id);
                            $stmt->execute();
                            $result = $stmt->get_result();

                            if ($row = $result->fetch_assoc()) {
                                $totaltime = $row['totaltime'];
                                $maxwpm = $row['maxwpm'];
                                $spiderspeed = $row['spiderspeed'];
                                $maxdistance = $row['maxdistance'];
                                $errors = $row['errors'];
                            } else {
                                $error_message = "No stats found for the given Main ID.";
                            }}?>
                        <p class="stat-item">Total Time: <?php echo $totaltime; ?> seconds</p>
                        <p class="stat-item">Max WPM: <?php echo $maxwpm; ?> WPM</p>
                        <p class="stat-item">Spider Speed: <?php echo $spiderspeed; ?> WPM</p>
                        <p class="stat-item">Max Distance: <?php echo $maxdistance; ?> meters</p>
                        <p class="stat-item">Errors: <?php echo $errors; ?></p>
                    </div>
                    
                    <div id="line_chart"></div>
                </div>
            </div>
        </div>
    </div>
    <script type="module" src="/assets/js/results.js">
    </script>
</body>
</html>
