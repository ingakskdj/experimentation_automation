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
${TYPE_OF_ARTICLE} =    new_stack
&{ARTICLE_PAGE_URL}    old_stack=https://www.wsj.com/articles/the-unbearable-lightness-of-biden-joe-president-speeches-beliefs-left-wing-progressive-trump-11644859341    new_stack=https://www.wsj.com/articles/ukraine-needs-support-of-global-business-president-zelensky-says-at-ceo-summit-11651604137
${BROWSER} =    safari
@{USER_CREDENTIALS} =   inga.olegovna@gmail.com  Dowjones917@
${TIMEOUT} =    90

#variables to be used for running Browserstack Automation
${baseUrl}                     https://www.wsj.com/articles/elon-musk-offers-to-buy-rest-of-twitter-for-54-20-a-share-11649932296
${os}                          windows
${osVersion}                   11
${browser}                     safari
${browserVersion}              100
${browserstack_userName}       experimentationa9q1xv
${browserstack_accessKey}      Fx6YXr5z7PFyzT9EETcF

#robot -d Results test_suite_new_stack_subs_safari.robot
*** Test Cases ***

Detect type of stack
    ${status}  ${value}=  Run keyword and ignore error  page should contain element  css:div[class^="UserLogin__LoginOptionWrapper"]
    Run Keyword if    '${status}' == 'PASS'  set test message    "it is an new stack article"
    Run Keyword if    '${status}' != 'PASS'  set test message    "it is an old stack article"

#Test suite for all key metrics
New Stack - Article Tools Save and Font Size
    Authorize for New Stack
    Locate and Click Save Button
    Locate and Click Font Size Button
    set test message    "Expect 'Save' and 'Font size' buttons - 2 clicks"

New Stack - Article Tools Play Button
    Authorize for New Stack
    Locate and Click Play
    set test message    "Expect 'play' button 1 click"
#TODO the problem here - the browser freezes when the popup window is shown
New Stack - Article Tools Print Button
    Authorize for New Stack
    Locate and Click Print Button
    set test message    "Expect 'print' button 1 click"

New Stack - Subscriber, MPN
    Authorize for New Stack
    Click MPN New Stack
    set test message    "Expect MPN - 2 clicks"

New Stack - Subscriber, MPO
    Authorize for New Stack
    Click MPO New Stack
    set test message    "Expect Most popular opinion - 5 clicks"

New Stack - User signs in, clicks on Recommended Video
    Authorize for New Stack
    Click RRRV New Stack Safari
    set test message    "Expect Recommended Video - 2 clicks"

New Stack - Subscriber - Main Logo
    Authorize for New Stack
    Locate and click Main Logo New Stack
    set test message    "Expect main logo - 1 click"

New Stack - Subscriber - Masthead Nav
    Authorize for New Stack
    Locate and click Top Masthead Nav New Stack
    set test message    "Expect Masthead Nav - 1 click"

New Stack - Subscriber - Breadcrumbs
    Authorize for New Stack
    Locate and click Breadcrumb New Stack
    set test message    "Expect Breadcrumbs - 1 click"

New Stack - User signs in and clicks inline links
    Authorize for New Stack
    Locate and click IL New Stack Safari
    set test message    "Expect Masthead and Breadcrumbs - 3 clicks"
#TODO - fix for safari - the issue is with action scroll element into view - but to locate exact location of any video is impossible
New Stack - User signs in and clicks video player
    Authorize for New Stack
    Inset.RelatedVideo.Locate and play RV New Stack
    set test message    "Expect video player - 1 click"
#TODO - fix for safari
New Stack - User signs in and clicks Newsletter
    Authorize for New Stack
    Locate, preview, subscribe and unsubscribe NL New Stack
    set test message    "Expect Newsletter inset - 3 clicks"
#TODO - fix for safari
New Stack - User signs in and clicks Podcast
    Authorize for New Stack
    Locate, play, subscribe and click audio control Podcast New Stack
    set test message    "Expect Podcast inset - 2 clicks"
#TODO - fix for safari
New Stack - User signs in and clicks Series Nav
    Authorize for New Stack
    Locate and Click Series Nav
    set test message    "Expect Series Nav - 1 click"
#TODO - fix for safari
New Stack - User signs in and clicks Share Tools - Facebook
    Authorize for New Stack
    Locate and Click ST New Stack Facebook
    set test message    "Expect Share - 1 click"
New Stack - User signs in and clicks Share Tools - Twitter
    Authorize for New Stack
    Locate and Click ST New Stack Twitter
    set test message    "Expect Share - 1 click"
#TODO - fix for safari
New Stack - User signs in and clicks Show Conversation
    Authorize for New Stack
    Click SC
    set test message    "Expect Show Conversation - 1 click"