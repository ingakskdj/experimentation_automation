*** Settings ***
Documentation  This is a test script to trigger key metrics on article page
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
Library    SeleniumLibrary
Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Variables ***
${TYPE_OF_ARTICLE} =    old_stack
&{ARTICLE_PAGE_URL}    old_stack=https://www.wsj.com/articles/the-unbearable-lightness-of-biden-joe-president-speeches-beliefs-left-wing-progressive-trump-11644859341    new_stack=https://www.wsj.com/articles/russia-built-parallel-payments-system-that-escaped-western-sanctions-11648510735
${BROWSER} =    chrome
@{USER_CREDENTIALS} =   inga.olegovna@gmail.com  Dowjones917@
${TIMEOUT} =    25

#variables to be used for running Browserstack Automation
${baseUrl}                     https://www.wsj.com/articles/elon-musk-offers-to-buy-rest-of-twitter-for-54-20-a-share-11649932296
${os}                          windows
${osVersion}                   11
${browser}                     chrome
${browserVersion}              100
${browserstack_userName}       experimentationa9q1xv
${browserstack_accessKey}      Fx6YXr5z7PFyzT9EETcF

#robot -d Results test_suite_old_stack_subs.robot
*** Test Cases ***
#Test suite for all key metrics - test 76P
Old Stack - Subscriber, MPN
    Authorize for Old Stack
    Locate and Click links MPN Old Stack

Old Stack - Subscriber, MPO
    Authorize for Old Stack
    Locate and Click links MPO Old Stack

Old Stack - User signs in, clicks on Breadcrumbs
    Authorize for Old Stack
    MastheadNav.Locate and click breadcrumb Old Stack

Old Stack - User signs in, clicks on Recommended Video
    Authorize for Old Stack
    Locate and click links RV Old Stack

Old Stack - User signs in and clicks inline links
    Authorize for Old Stack
    InlineLinks.Locate and click IL Old Stack

Old Stack - User signs in and clicks video player
    Authorize for Old Stack
    Inset.RelatedVideo.Locate and play RV Old Stack

Old Stack - User signs in and clicks Newsletter
    Authorize for Old Stack
    Locate, preview, subscribe and unsubscribe NL Old Stack

Old Stack - User signs in and clicks Podcast
    Authorize for Old Stack
    Locate, play, subscribe and click audio control Podcast Old Stack