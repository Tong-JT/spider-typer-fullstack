<?php
    session_start();
    $conn = new mysqli("localhost", "root", "", "scores");
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Spider Typer | Escape the Giant Spider!</title>
        <meta charset="UTF-8">
        <link rel="icon" type="image/jpeg" sizes="32x32" href="/assets/img/icon.png">
        <link rel="stylesheet" href="/assets/css/style.css" type="text/css">
        <link href="https://fonts.cdnfonts.com/css/young-serif" rel="stylesheet">
        <link href="https://fonts.cdnfonts.com/css/literata-book" rel="stylesheet">
        <link href="https://fonts.cdnfonts.com/css/minagi-bristone" rel="stylesheet">          
    </head>

    <body>
        <!-- Entry popup - Asks user for start distance from spider and submit button to start run -->

        <div class="popup-overlay" id="popupOverlay">
            <div class="popup-menu">
                <div id="settings-screen">
                    <div class="menu-header">
                        <h1 class="header-text"><span>Oh no! You've awakened the beast!</span></h1>
                    </div>
                    <div class="menu-contents">
                        Your only hope of survival is your typing speed! You must type words fast and accurately. The quicker you type, the faster you run. But beware! Mistakes will cost your precious distance and could cause the spider to catch up!
                    </div>
                    <button id="entry-button" class="click-button">Start run</button>
                </div>
            </div>
        </div>

        <div class="popup-overlay" id="gameoverOverlay">
            <div class="popup-menu">
                <div id="settings-screen">
                    <div class="menu-header">
                        <h1 class="header-text"><span>Game over!</span></h1>
                    </div>
                    <div class="menu-contents">
                        The beast has caught you. Your journey is now over.
                    </div>
                </div>
                <button id="view-stats" class="click-button">View stats</button>
                <button id="restart-game" class="click-button">Restart</button>
            </div>
        </div>

        <!-- Main page content-->

        <div id="typer-screen">
            <div id="main-typer">
                <div id="main-info">
                    <div id="distance">
                        Distance from spider: <span id="distance-num">0</span>m <span id="main_id" style="visibility:hidden;">0</span>
                    </div>
                    <div id="timer">
                        <div id="timebox">Time spent running: <span id="minutes">00</span> mins <span id="seconds">00</span> secs </div> 
                        <div id="wpmbox">|  WPM: <span class="WPM" id="WPM">0</span> </div>
                        <div id="errorbox">|  Errors: <span id="errors">0</span></div>
                    </div>
                    <input type="hidden" id="main-id" name="main-id" />
                </div>
                <div id="typing-area">
                    <div id="text-printing"></div>
                    <input type="text" id="input-field" autofocus placeholder="Begin typing to start run...">                    
                </div>
            </div>
        </div>
        
        <!-- Graphics bottom bar -->

        <div id="graphics">
            <div id="characters">
                <div id="giant-spider" class="character-pic">
                    <div class="speed-box" id="spider-speed">20</div>
                    <img src="/assets/img/spider.gif" id="spooder" draggable="false">
                </div>
                <div id="main-character" class="character-pic">
                    <div class="speed-box WPM" id="character-speed">0</div>
                    <img src="/assets/img/guy.gif" id="guy" draggable="false">
                </div>
            </div>
            <div id="background">
                <div id="background-image"></div>
            </div>
        </div>
        <script type="module" src="/assets/js/script.js">
        </script>
    </body>
</html>