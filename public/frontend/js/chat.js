
// Collapsible
var coll = document.getElementsByClassName("collapsible");

for (let i = 0; i < coll.length; i++) {
    coll[i].addEventListener("click", function () {
        this.classList.toggle("active");
        
        var content = this.nextElementSibling;//so this returns immediate next element to the specified element

        if (content.style.maxHeight) {//if content.style.maxHeight=true then run this..
            content.style.maxHeight = null;
        } else {//and if  not run this
            content.style.maxHeight = content.scrollHeight + "px";
        }

    });
}
//Getting the TimeStamp..
function getTime() {
    let today = new Date();
    hours = today.getHours();
    minutes = today.getMinutes();

    if (hours < 10) {//yo chahi..so that..single digit time huda awkward nadekhiyos bhanera
        hours = "0" + hours;
    }

    if (minutes < 10) {//same here as well..
        minutes = "0" + minutes;
    }

    let time = hours + ":" + minutes;
    return time;
}

// Gets the first message
function firstBotMessage() {
    let firstMessage = "How can I help??"
    document.getElementById("botStarterMessage").innerHTML = '<p class="botText"><span>' + firstMessage + '</span></p>';

    let time = getTime();

    //jquery use gareko..
    $("#chat-timestamp").append(time);
    document.getElementById("userInput").scrollIntoView(false);
    //scrollintoview moves our content to the displayable window area
}

//function lai immediately call garihaleko 
firstBotMessage();

// Retrieves the response
function getHardResponse(userText) {
    let botResponse = getBotResponse(userText);
    let botHtml = '<p class="botText"><span>' + botResponse + '</span></p>';
    $("#chat-box").append(botHtml);

    document.getElementById("chat-bar-bottom").scrollIntoView(true);
}

//Gets the text text from the input box and processes it
function getResponse() {
    let userText = $("#textInput").val();

    if (userText == "") {
        userText = "Type something";
    }

    let userHtml = '<p class="userText"><span>' + userText + '</span></p>';

    $("#textInput").val("");
    $("#chat-box").append(userHtml);
    document.getElementById("chat-bar-bottom").scrollIntoView(true);

    setTimeout(() => {
        getHardResponse(userText);
    }, 1000)

}

// Handles sending text via button clicks
function buttonSendText(sampleText) {
    let userHtml = '<p class="userText"><span>' + sampleText + '</span></p>';

    $("#textInput").val("");
    $("#chat-box").append(userHtml);
    document.getElementById("chat-bar-bottom").scrollIntoView(true);

    //Uncomment this if you want the bot to respond to this buttonSendText event
    // setTimeout(() => {
    //     getHardResponse(sampleText);
    // }, 1000)
}

function sendButton() {
    /*getResponse();*/
    buttonSendText("Please type something first!!")

}

function heartButton() {
    buttonSendText("Thank You!")

}

// Press enter to send a message
$("#textInput").keypress(function (e) {
    if (e.which == 13) {
        getResponse();
    }
});

