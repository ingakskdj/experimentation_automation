*** Settings ***
Documentation  This is a test suite with assertions verifying that key buttons are working on page under experiment
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/SignIn.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/common.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/Inset.Podcast.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/ShowConversation.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/Inset.Newsletter.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/Inset.RelatedVideo.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/RightRail.PopularNews.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/RightRail.PopularOpinion.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/RightRail.RecommendedVideos.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/FurtherCoverage.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/InlineLinks.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/SeriesNav.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/BrowserStackSetup.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/MastheadNav.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/ShareTools.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/WTRN.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/ArticleTools.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/PrintTool.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/Follow.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/Slideshow.robot
Library    SeleniumLibrary
Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Variables ***
${TYPE_OF_ARTICLE} =    new_stack
&{ARTICLE_PAGE_URL}    old_stack=https://www.wsj.com/articles/the-unbearable-lightness-of-biden-joe-president-speeches-beliefs-left-wing-progressive-trump-11644859341    new_stack=https://www.wsj.com/articles/senate-vote-to-test-appetite-for-expanded-chips-bill-11658265660
${BROWSER} =    chrome
@{USER_CREDENTIALS} =   inga.olegovna@gmail.com    password1
${TIMEOUT} =    20

#variables to be used for running Browserstack Automation
${baseUrl}                     https://www.wsj.com/articles/june-jobs-report-unemployment-rate-economy-growth-2022-11657237512?qa_param=80p&optimizely_x=21803860596&optimizely_force_tracking=true
${os}                          windows
${osVersion}                   11
${browser}                     chrome
${browserVersion}              100
${browserstack_userName}       experimentationa9q1xv
${browserstack_accessKey}      Fx6YXr5z7PFyzT9EETcF

#robot -d Results test_suite_regression_new_stack.robot
*** Test Cases ***
#confirmed
#Verify sharing via Facebook
#    Locate and Click ST New Stack Facebook
#    switch window    new
#    Facebook sharing window open

#confirmed
#Verify sharing via Twitter
#    Locate and Click ST New Stack Twitter
#    switch window    new
#    Twitter sharing window open

#confirmed
#Verify sharing via Linkedin
#    Locate and Click ST New Stack Linkedin
#    switch window    new
#    Linkedin sharing window open

#add copy link verification - works not stable, because text changes very quickly
#Verify sharing via link
#    wait until page contains element    css:ul[aria-labelledby="share-tools-title"]
#    mouse over    css:ul[aria-labelledby="share-tools-title"]
#    sleep    5
#    wait until page contains element    css=ul[class^="css-10k3b4c-List"] > li:nth-child(4)
#    click element    css=ul[class^="css-10k3b4c-List"] > li:nth-child(4)
#    element text should be    css=ul[class^="css-10k3b4c-List"] > li:nth-child(4) > button[class^="css-1ypjenu-Item"]    COPIED

#confirmed
#verify sharing via email
#for subs only
#Verify sharing via email
#    Authorize for New Stack
#    Locate and Click ST Email Share Link
#    Sharing via email popup is present

#confirmed
#verify article tools - save, note that for same user the article can be saved only once
#Verify article can be saved
#    Authorize for New Stack
#    Locate and Click Save Button
#    Verify label Save is changed to Saved
#    Verify saved article is in saved content
#    run keyword if    '${article_headline_source}' == '${article_headline_saved}'    Log To Console    'Article is saved successfully'

#no assertion since it is a build-in google window
#verify article tools - print
#Verify article can be printed
#    wait until page contains element    css:button[class*="StyledPrintButton"]
#    click element    css:button[class*="StyledPrintButton"]
#    press keys    None    ESC
#TODO fails possibly due to chrome bug
#verify article tools - text size
Verify text size tool changes actual font size
    wait until page contains element    css:button[id*="headlessui-popover-button"]
    scroll element into view    css:button[id*="headlessui-popover-button"]
    click element    css:button[id*="headlessui-popover-button"]
    wait until page contains element    css:button[class*="Button-PanelItem"]

#    sleep    5
#verify article tools - listen to article if present