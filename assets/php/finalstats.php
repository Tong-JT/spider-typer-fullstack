<?php
    session_start();
    $conn = new mysqli("localhost", "root", "", "scores");

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $mainId = $_POST['main-id'];
        $stmt = $conn->prepare("UPDATE main SET totaltime = ?, maxwpm = ?, spiderspeed = ?, maxdistance = ?, errors = ? WHERE id = ?");

        $totaltime = $_POST['time'];
        $maxwpm = $_POST['max-wpm'];
        $spiderspeed = $_POST['spider-wpm'];
        $maxdistance = $_POST['max-distance'];
        $errors = $_POST['errors'];

        $stmt->bind_param("iiiiii", $totaltime, $maxwpm, $spiderspeed, $maxdistance, $errors, $mainId);
        $stmt->execute();
        $stmt->close();
    }
?>
