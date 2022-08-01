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
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/Follow.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/Slideshow.robot
Library    SeleniumLibrary
Test Setup    testSetupBrowserstack
Test Teardown    End Web Test

*** Variables ***
${TYPE_OF_ARTICLE} =    new_stack
&{ARTICLE_PAGE_URL}    old_stack=https://www.wsj.com/articles/the-unbearable-lightness-of-biden-joe-president-speeches-beliefs-left-wing-progressive-trump-11644859341    new_stack=https://www.wsj.com/articles/elon-musk-reverses-decision-to-join-twitters-board-twitter-ceo-says-11649648263
${BROWSER} =    chrome
@{USER_CREDENTIALS} =   inga.olegovna@gmail.com password1
${TIMEOUT} =    500

#variables to be used for running Browserstack Automation
${baseUrl}                     https://www.wsj.com/articles/june-jobs-report-unemployment-rate-economy-growth-2022-11657237512?qa_param=80p&optimizely_x=21803860596&optimizely_force_tracking=true
${os}                          windows
${osVersion}                   11
${browser}                     chrome
${browserVersion}              100
${browserstack_userName}       experimentationa9q1xv
${browserstack_accessKey}      Fx6YXr5z7PFyzT9EETcF

#robot -d Results test_suite_new_stack_subs.robot
*** Test Cases ***

Detect type of stack
    ${status}  ${value}=  Run keyword and ignore error  page should contain element  css:div[class^="UserLogin__LoginOptionWrapper"]
    Run Keyword if    '${status}' == 'PASS'  set test message    "it is an new stack article"
    Run Keyword if    '${status}' != 'PASS'  set test message    "it is an old stack article"

#Test suite for all key metrics
New Stack - Article Save tool
    Authorize for New Stack
    Locate and Click Save Button
    set test message    "Expect 'Save' button - 1 click"

New Stack - Article Font Size Tool
    Authorize for New Stack
    Locate and Click Font Size Button
    set test message    "Expect 'Font size' button - 1 click"

New Stack - Article Tools Play Button
    Authorize for New Stack
    Locate and Click Play
    set test message    "Expect 'play' button 1 click"

New Stack - Article Tools Print Button
    Authorize for New Stack
    Locate and Click Print Button
    set test message    "Expect 'print' button 1 click"

New Stack - Subscriber, MPN
    Authorize for New Stack
    Locate and Click links MPN New Stack
    set test message    "Expect Most popular news - 3 clicks"

New Stack - Subscriber, MPO
    Authorize for New Stack
    Click MPO New Stack
    set test message    "Expect Most popular opinion - 3 clicks"

New Stack - User signs in, clicks on Recommended Video
    Authorize for New Stack
    Locate and click links RV New Stack
    set test message    "Expect Recommended Video - 3 clicks"
#
New Stack - Nonsubscribers - Main Logo
    Authorize for New Stack
    Locate and click Main Logo New Stack
    set test message    "Expect main logo - 1 click"

New Stack - Nonsubscribers - Masthead Nav
    Authorize for New Stack
    Locate and click Top Masthead Nav New Stack
    set test message    "Expect Masthead Nav - 1 click"

New Stack - Nonsubscribers - Breadcrumbs
    Authorize for New Stack
    Locate and click Breadcrumb New Stack
    set test message    "Expect Breadcrumbs - 1 click"

New Stack - User signs in and clicks inline links
    Authorize for New Stack
    InlineLinks.Locate and click IL New Stack
    set test message    "Expect Inline links - 1 click"

New Stack - User signs in and clicks video player
    Authorize for New Stack
    Inset.RelatedVideo.Locate and play RV New Stack
    set test message    "Expect video player - 1 click"

New Stack - User signs in and clicks Newsletter
    Authorize for New Stack
    Locate, preview, subscribe and unsubscribe NL New Stack
    set test message    "Expect Newsletter inset - 3 clicks"

New Stack - User signs in and clicks Podcast
    Authorize for New Stack
    Locate, play, subscribe and click audio control Podcast New Stack
    set test message    "Expect Podcast inset - 2 clicks"

New Stack - User signs in and clicks Series Nav
    Authorize for New Stack
    Locate and Click Series Nav
    set test message    "Expect Series Nav - 1 click"

New Stack - User signs in and clicks Share via Facebook
    Authorize for New Stack
    Locate and Click ST New Stack Facebook
    set test message    "Expect Share - 1 click"

New Stack - User signs in and clicks Share via Twitter
    Authorize for New Stack
    Locate and Click ST New Stack Twitter
    set test message    "Expect Share - 1 click"

New Stack - User signs in and clicks Show Conversation
    Authorize for New Stack
    Click SC
    set test message    "Expect Show Conversation - 1 click"

New Stack - Susbscribers - Subs WTRN
    Authorize for New Stack
    Locate and Click WTRN sub
    set test message    "Expect WTRN - 4 clicks"

New Stack - Susbscribers - Further Coverage links
    Authorize for New Stack
    Locate FC New Stack
    Click FC New Stack
    set test message    "Expect Further Coverage - 1 click"

New Stack - Susbscribers - Author click
    Authorize for New Stack
    Locate Author link and click it
    set test message    "Expect Author name - 1 click"
#
#New Stack - Subscribers - Slideshow
#    Authorize for New Stack
#    Locate Slideshow
#    Click Next arrow Sign