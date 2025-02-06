// APIs - Extract information from JSON

// Generates a random quote from Game of Thrones using an external API
async function generateQuote() {
    const url = "https://api.gameofthronesquotes.xyz/v1/random";
    try {
        const response = await fetch(url);
        if (!response.ok) {
            throw new Error(`Response status: ${response.status}`);
        }
        const json = await response.json();
        return `"${json.sentence}" ${json.character.name}.`;
    } catch (error) {
        console.error(error.message);
    }
}

// A PHP based API which retrieves the maximum values from the distance and WPM columns, stores it in a JSON,
// then allows the Javascript to fetch it.
// Resource: https://www.w3docs.com/snippets/php/how-to-convert-mysql-data-to-json-with-php.html
async function generateMaxStats() {
    let mainId = document.getElementById("main-id").value;
    const api = `assets/php/getmaxstats.php?main_id=${mainId}`;
    try {
        const response = await fetch(api);
        if (!response.ok) {
            throw new Error(`Response status: ${response.status}`);
        }
        const json = await response.json();
        console.log(json);
        return json;
    } catch (error) {
        console.error(error.message);
    }
}



// Async Form POSTs

// Tried to do it with form submissions in PHP, but I encountered a lot of problems where it kept refreshing
// the page every 5 seconds and resetting the entire program, so I had to do it via Javascript so it wouldn't
// trigger the default submit event.
// Resource used: https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest_API/Using_FormData_Objects

// Submits an empty form, then retrieves the main id via fetch and inserts value into HTML for future use
async function submitEntryForm() {
    const formData = new FormData();
    try {
        const response = await fetch('assets/php/entry.php', {
            method: 'POST',
            body: formData
        });
        const data = await response.json();
        const mainId = data.main_id;
        document.getElementById('main-id').value = mainId;
    } catch (error) {
        console.error('Error submitting form:', error);
    }
}

// Records stats while the program is running, sending a POST to mySQL.
async function recordTimeSeries() {
    let time = timePassed;
    let wpm = parseInt(document.getElementById("WPM").textContent);
    let spider = parseInt(document.getElementById("spider-speed").textContent);
    let distance = parseInt(document.getElementById("distance-num").textContent);
    let mainId = document.getElementById("main-id").value;

    let formData = new FormData();
    formData.append('main-id', mainId);
    formData.append('time', time);
    formData.append('spider-wpm', spider);
    formData.append('wpm', wpm);
    formData.append('distance', distance);

    try {
        const response = await fetch('assets/php/timeseries.php', {
            method: 'POST',
            body: formData,
        });
    } catch (error) {
        console.error("Error:", error);
    }
}

// Send POST with final stats, UPDATE-ing the SQL table.
async function recordFinalStats() {
    let time = timePassed;
    let spider = parseInt(document.getElementById("spider-speed").textContent);
    let mainId = document.getElementById("main-id").value;
    let maxStats = await generateMaxStats();
    let maxWpm = maxStats.maxWpm;
    let maxDistance = maxStats.maxDistance;
    let errors = parseInt(document.getElementById("errors").textContent);

    let formData = new FormData();
    formData.append('time', time);
    formData.append('max-wpm', maxWpm);
    formData.append('spider-wpm', spider);
    formData.append('max-distance', maxDistance);
    formData.append('errors', errors);
    formData.append('main-id', mainId);

    try {
        const response = await fetch('assets/php/finalstats.php', {
            method: 'POST',
            body: formData,
        });
    } catch (error) {
        console.error("Error:", error);
    }
}

let textArea = document.getElementById('text-printing');
let inputField = document.getElementById("input-field");
let currentQuote = "";

async function newQuote() {
    charIndex = 0;
    inputField.value = "";
    textArea.textContent = null;
    currentQuote = await generateQuote();
    currentQuote.split('').forEach(char => {
        const charSpan = document.createElement('span');
        charSpan.innerText = char;
        charSpan.style.display = "inline-block";
        textArea.appendChild(charSpan);
    });
}

let charIndex = 0;
let gameStart = false;
let errorCount = 0;
let typedCharacterCount = 0;
let startDistance = 100;
let timer;

function startRun() {
    timer = setInterval(backgroundTime, 1000);
}

let timePassed = 0;
let minutes = 0;
let seconds = 0;

async function backgroundTime() {
    updateTimer();
    updateWPM();
    updateSpiderSpeed();
    updateDistance();
    updateBackgroundScroll();
    recordTimeSeries();
}

function updateTimer() {
    timePassed++;
    minutes = Math.floor(timePassed / 60);
    seconds = timePassed % 60;
    let mins = document.getElementById("minutes");
    let secs = document.getElementById("seconds");
    mins.innerText = String(minutes).padStart(2, '0');
    secs.innerText = String(seconds).padStart(2, '0');
}

function updateWPM() {
    let charactersTyped = correctCharacterCount;
    let elapsedSeconds = timePassed;

    if (elapsedSeconds > 0) {
        let wpm = Math.round((charactersTyped/5)/(elapsedSeconds/60));
        let wpmDisplays = document.querySelectorAll(".WPM");
        wpmDisplays.forEach(function(wpmDisplay) {
            wpmDisplay.textContent = wpm;
        });
    }
}

function updateSpiderSpeed() {
    let spiderSpeed = document.getElementById("spider-speed");
    let spiderSpeedNum = parseInt(spiderSpeed.innerText);
    if (timePassed % 10==0) {
        spiderSpeedNum += 5;
    }
    spiderSpeed.innerText = spiderSpeedNum;
}

let maxDistance = 200;
let minDistance = 30;

function updateDistance() {
    let distance = document.getElementById("distance-num");
    let distanceNum = parseInt(distance.innerText);
    let playerSpeed = parseInt(document.getElementById("character-speed").innerText);
    let spiderSpeed = parseInt(document.getElementById("spider-speed").innerText);

    let movement = spiderSpeed - playerSpeed;
    distanceNum -= movement;
    distance.innerText = Math.max(distanceNum, 0);

    let characterDistance = (distanceNum / startDistance) * (maxDistance - minDistance) + minDistance;
    let spiderDistance = maxDistance - characterDistance;

    if (characterDistance>800) {
        document.getElementById("main-character").style.transform = `translateX(800px)`;
    }
    else {
        document.getElementById("main-character").style.transform = `translateX(${characterDistance}px)`;
    }
    if (spiderDistance<-80) {
        document.getElementById("giant-spider").style.transform = `translateX(-80px)`;
    }
    else {
        document.getElementById("giant-spider").style.transform = `translateX(${spiderDistance}px)`;
    }

    if (distanceNum <= 0) {
        stopGame();
    }
}

function updateBackgroundScroll() {
    let characterSpeed = parseInt(document.getElementById("character-speed").innerText);
    let backgroundScrollSpeed = 0.1 * characterSpeed;
    let background = document.getElementById("background-image");
    background.style.animationDuration = `${(50 / backgroundScrollSpeed)}s`;
}

document.addEventListener('keydown', function(event) {
    if (event.ctrlKey && event.key === 'a') {
        event.preventDefault();
    }
});

async function stopGame() {
    recordFinalStats();
    document.getElementById('main-character').style.display = 'none';
    clearInterval(timer);
    gameoverScreen();
}

function gameoverScreen() {
    let gameover = document.getElementById("gameoverOverlay");
    gameover.style.display = "block";
}


// Base code for typing test was started with this tutorial, however, it was refactored significantly during
// development since the tutorial's methods involved looping through the code multiple times to check for
// changes, however, this resulted in errors and word count increasing exponentially due to the number of
// loops during each keypress.
// Resource: https://www.geeksforgeeks.org/design-a-typing-speed-test-game-using-javascript/
let correctCharacterCount = 0;
function listenForInput() {
    let typedText = inputField.value;
    typedCharacterCount++;

    if (typedText.length < charIndex) {
        charIndex--;
        typedCharacterCount-=2;
        let previousQuoteSpan = textArea.querySelectorAll('span')[charIndex];
        previousQuoteSpan.classList.remove('correct');
        previousQuoteSpan.classList.remove('incorrect');
        return;
    }

    if (charIndex < currentQuote.length) {
        let typedChar = typedText[charIndex];
        let quoteSpan = textArea.querySelectorAll('span')[charIndex];

        if (typedChar === currentQuote[charIndex]) {
            quoteSpan.classList.add('correct');
            quoteSpan.classList.remove('incorrect');
            correctCharacterCount++; 
        } else {
            quoteSpan.classList.add('incorrect');
            quoteSpan.classList.remove('correct');
            errorCount++;
            subtractTimeFromDistance();
        }

        charIndex++;
    }

    let errors = document.getElementById("errors");
    errors.textContent = errorCount;

    if (charIndex === currentQuote.length) {
        newQuote();
    }
}

function subtractTimeFromDistance() {
    let distance = document.getElementById("distance-num");
    let distanceNum = parseInt(distance.innerText);
    distanceNum -= 15;
    distance.innerText = Math.max(distanceNum, 0);
    distance.classList.add('red');
    setTimeout(() => {
        distance.classList.remove('red');
    }, 500);
}

function setUpScreen() {
    newQuote();
    document.getElementById("main-character").style.transform = `translateX(210px)`;
    let distance = document.getElementById("distance-num");
    distance.innerText = startDistance;
    inputField.addEventListener('input', function() {
        if (!gameStart) {
            gameStart = true;
            startRun();
        }
        listenForInput();
    });;
}

setUpScreen();


document.getElementById("entry-button").addEventListener("click", function(event) {
    submitEntryForm();
    document.getElementById('popupOverlay').style.display = 'none';
});

document.getElementById("view-stats").addEventListener("click", function() {
    let mainId = document.getElementById("main-id").value;
    let statsUrl = "viewresults.php?main_id=" + mainId;
    location.replace(statsUrl);
});

document.getElementById("restart-game").addEventListener("click", function() {
    location.reload();
});