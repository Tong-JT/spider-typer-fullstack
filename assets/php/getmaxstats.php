<?php
    $conn = new mysqli("localhost", "root", "", "scores");
    if (isset($_GET['main_id'])) {
        $main_id = $_GET['main_id'];
        $stmt = $conn->prepare("SELECT MAX(wpm) AS maxWpm, MAX(distance) AS maxDistance FROM timeseries WHERE main_id = ?");
        $stmt->bind_param("i", $main_id);
        $stmt->execute();
        $result = $stmt->get_result();
        $row = $result->fetch_assoc();
        echo json_encode([
            'maxWpm' => $row['maxWpm'],
            'maxDistance' => $row['maxDistance']
        ]);
        $stmt->close();
    } 
?>
