<?php
    session_start();
    $conn = new mysqli("localhost", "root", "", "scores");

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $main_id = $_POST['main-id'];
        $time = $_POST['time'];
        $wpm = $_POST['wpm'];
        $spider_wpm = $_POST['spider-wpm'];
        $distance = $_POST['distance'];

        $stmt = $conn->prepare("INSERT INTO timeseries (main_id, time, wpm, spider, distance) VALUES (?, ?, ?, ?, ?)");
        $stmt->bind_param("iiiii", $main_id, $time, $wpm, $spider_wpm, $distance);
        $stmt->execute();
        $stmt->close();

    }

    $conn->close();
?>
