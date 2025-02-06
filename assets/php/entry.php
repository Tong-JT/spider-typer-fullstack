<?php
    session_start();
    $conn = new mysqli("localhost", "root", "", "scores");

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $stmt = $conn->prepare("INSERT INTO main (totaltime, maxwpm, spiderspeed, maxdistance, errors) VALUES (?, ?, ?, ?, ?)");
        $totaltime = 0;
        $maxwpm = 0;
        $spiderspeed = 0;
        $maxdistance = 0;
        $errors = 0;
        $stmt->bind_param("iiiii", $totaltime, $maxwpm, $spiderspeed, $maxdistance, $errors);

        if ($stmt->execute()) {
            $main_id = $conn->insert_id;
            $_SESSION['main_id'] = $main_id;
            echo json_encode(['main_id' => $main_id]);
        } else {
            echo "Error";
        }
        $stmt->close();
    }
?>
