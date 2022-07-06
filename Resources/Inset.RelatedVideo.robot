*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Locate and play RV Old Stack
    Locate RV Old Stack
    Play RV
    #Stop RV Old Stack

Locate and play RV New Stack
    Locate RV New Stack
    Play RV
    #Stop RV New Stack

Locate and play RV New Stack Safari
    wait until page contains element    css:div[class='video-thumb']
    Play RV

Locate RV Old Stack
    wait until page contains element    css:div[class='video-thumb']
    scroll element into view    css:div[class='video-thumb']

Locate RV New Stack
    wait until page contains element    css:div[data-type="video"]
    scroll element into view     css:div[data-type="video"]
    sleep  5

Play RV
    wait until page contains element    css:button[aria-label='Play video']
    Execute JavaScript    document.querySelector("button[aria-label='Play video']").click()
    sleep  5

#Stop RV
#precondition: step "click on play button" is required, button disappears upon clicking on play
    #wait until page contains element    css:video[id^="videoplayer"]
    #mouse over    css:video[id^="videoplayer"]
    #wait until page contains element    css:button[aria-label='Play video']
    #Execute JavaScript    document.querySelector("button[aria-label='Play video']").click()