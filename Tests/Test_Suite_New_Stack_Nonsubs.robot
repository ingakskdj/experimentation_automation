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
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/NonSubs_Paywall.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/TypeOfArticleStack.robot
Library    SeleniumLibrary
Test Setup    testSetupBrowserstack
Test Teardown    End Web Test

*** Variables ***
${TYPE_OF_ARTICLE} =    control
&{ARTICLE_PAGE_URL}    control=https://www.wsj.com/articles/elon-musk-reverses-decision-to-join-twitters-board-twitter-ceo-says-11649648263?optimizely_log=debug&abtype=edge&testing=test&optimizely_x=21631140329    v1=https://www.wsj.com/articles/elon-musk-reverses-decision-to-join-twitters-board-twitter-ceo-says-11649648263?optimizely_log=debug&abtype=edge&testing=test&optimizely_x=21610020643    v2=https://www.wsj.com/articles/elon-musk-reverses-decision-to-join-twitters-board-twitter-ceo-says-11649648263?optimizely_log=debug&abtype=edge&testing=test&optimizely_x=21611940294     v3=https://www.wsj.com/articles/elon-musk-reverses-decision-to-join-twitters-board-twitter-ceo-says-11649648263?optimizely_log=debug&abtype=edge&testing=test&optimizely_x=21609990440    v4=https://www.wsj.com/articles/elon-musk-reverses-decision-to-join-twitters-board-twitter-ceo-says-11649648263?optimizely_log=debug&abtype=edge&testing=test&optimizely_x=21600380415
${BROWSER} =    chrome
@{USER_CREDENTIALS} =   inga.olegovna@gmail.com  Dowjones917@
${TIMEOUT} =    200

#variables to be used for running Browserstack Automation
${baseUrl}                     https://www.wsj.com/articles/elon-musk-reverses-decision-to-join-twitters-board-twitter-ceo-says-11649648263?optimizely_log=debug&abtype=edge&testing=test&optimizely_x=21631140329
${os}                          windows
${osVersion}                   10
${browser}                     chrome
${browserVersion}              100
${browserstack_userName}       experimentationa9q1xv
${browserstack_accessKey}      Fx6YXr5z7PFyzT9EETcF

#robot -d Results test_suite_new_stack_nonsubs.robot
*** Test Cases ***
#Test suite for all key metrics
#TODO think what to do if paywall blocks the elements
Detect type of stack
    Get Source of the webpage to determine which stack it is on

#New Stack - Nonsubscribers - Main Logo
#    #BrowserStackSetup.testSetupBrowserstack
#    Locate and click Main Logo New Stack
#    set test message    "Expect main logo - 1 click"

#New Stack - Nonsubscribers - Masthead Nav
#    #BrowserStackSetup.testSetupBrowserstack
#    Locate and click Top Masthead Nav New Stack
#    set test message    "Expect Masthead Nav - 1 click"

#New Stack - Nonsubscribers - Breadcrumbs
#    #BrowserStackSetup.testSetupBrowserstack
#    Locate and click Breadcrumb New Stack
#    set test message    "Expect Breadcrumbs - 1 click"

#New Stack - Nonsubscribers - Font Size
#    #BrowserStackSetup.testSetupBrowserstack
#    Locate and Click Font Size Button
#    set test message    "Expect Font Size - 1 click"

#New Stack - Nonsubscribers - Print
#    #BrowserStackSetup.testSetupBrowserstack
#    Locate and Click Print Button
#    set test message    "Expect Print - 1 click"
#
#New Stack - Nonsubscribers - MPN - test 1
#    #BrowserStackSetup.testSetupBrowserstack
#    Authorize for New Stack
#    Locate and Click links MPN New Stack
#    set test message    "Expect MPN - 3 clicks"

#New Stack - Nonsubscribers - MPN - test 2
#    #BrowserStackSetup.testSetupBrowserstack
#    Authorize for New Stack
#    Locate MPN
#    Click MPN New Stack
#    set test message    "Expect MPN - 3 clicks"
#
#New Stack - Nonsubscribers - MPO
#    #BrowserStackSetup.testSetupBrowserstack
#    Locate and Click links MPO New Stack
#    set test message    "Expect MPO - 3 clicks"

New Stack - Nonsubscribers - RV
    #BrowserStackSetup.testSetupBrowserstack
    Locate and Click links RV New Stack
    set test message    "Expect Recommended Video - 3 clicks"

New Stack - Nonsubscribers - Share Facebook
    #BrowserStackSetup.testSetupBrowserstack
    Locate and Click ST New Stack Facebook
    set test message    "Expect Share - 1 clicks"

New Stack - Nonsubscribers - Share Twitter
    #BrowserStackSetup.testSetupBrowserstack
    Locate and Click ST New Stack Twitter
    set test message    "Expect Share - 1 clicks"

New Stack - Nonsubscibers - Video player
    #BrowserStackSetup.testSetupBrowserstack
    Inset.RelatedVideo.Locate and play RV New Stack
    set test message    "Expect video player - 1 click"

New Stack - Nonsubscibers - NonSubs Paywall
    #BrowserStackSetup.testSetupBrowserstack
    Click Header and Paywall Suscribe buttons and View Membership Options
    set test message    "Expect Paywall - 3 clicks"

#New Stack - Nonsusbscribers - Nonsubs WTRN
#    Locate and Click WTRN nonsub
#    set test message    "Expect WTRN - 4 clicks"
