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
Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Variables ***
${TYPE_OF_ARTICLE} =    new_stack
&{ARTICLE_PAGE_URL}    old_stack=https://www.wsj.com/articles/the-unbearable-lightness-of-biden-joe-president-speeches-beliefs-left-wing-progressive-trump-11644859341    new_stack=https://www.wsj.com/articles/ukraine-needs-support-of-global-business-president-zelensky-says-at-ceo-summit-11651604137
${BROWSER} =    firefox
@{USER_CREDENTIALS} =   inga.olegovna@gmail.com  Dowjones917@
${TIMEOUT} =    45

#variables to be used for running Browserstack Automation
${baseUrl}                     https://www.wsj.com/articles/russia-built-parallel-payments-system-that-escaped-western-sanctions-11648510735
${os}                          windows
${osVersion}                   11
${browser}                     firefox
${browserVersion}              100
${browserstack_userName}       experimentationa9q1xv
${browserstack_accessKey}      Fx6YXr5z7PFyzT9EETcF

#robot -d Results test_suite_new_stack_nonsubs_safari.robot
*** Test Cases ***
#Test suite for all key metrics
Detect type of stack
    ${status}  ${value}=  Run keyword and ignore error  page should contain element  css:div[class^="UserLogin__LoginOptionWrapper"]
    Run Keyword if    '${status}' == 'PASS'  set test message    "it is an new stack article"
    Run Keyword if    '${status}' != 'PASS'  set test message    "it is an old stack article"

New Stack - Nonsubscribers - Main Logo
#    #BrowserStackSetup.testSetupBrowserstack
    Locate and click Main Logo New Stack
    set test message    "Expect main logo - 1 click"

New Stack - Nonsubscribers - Masthead Nav
#    #BrowserStackSetup.testSetupBrowserstack
    Locate and click Top Masthead Nav New Stack
    set test message    "Expect Masthead Nav - 1 click"

New Stack - Nonsubscribers - Breadcrumbs
#    #BrowserStackSetup.testSetupBrowserstack
    Locate and click Breadcrumb New Stack
    set test message    "Expect Breadcrumbs - 1 click"

New Stack - Nonsubscribers - Font Size
#    #BrowserStackSetup.testSetupBrowserstack
    Locate and Click Font Size Button
    set test message    "Expect Font Size - 1 click"
#TODO for Firefox and Safari - add close the popup window action
New Stack - Nonsubscribers - Print
#    #BrowserStackSetup.testSetupBrowserstack
    Locate and Click Print Button
    set test message    "Expect Print - 1 click"

New Stack - Nonsubscribers - MPN
    #BrowserStackSetup.testSetupBrowserstack
    Click MPN New Stack
    set test message    "Expect MPN - 2 clicks"

New Stack - Nonsubscribers - MPO
    #BrowserStackSetup.testSetupBrowserstack
    Click MPO New Stack
    set test message    "Expect MPO - 2 clicks"

New Stack - Nonsubscribers - RV
    #BrowserStackSetup.testSetupBrowserstack
    Click RRRV New Stack Safari
    set test message    "Expect Recommended Video - 2 clicks"

New Stack - Nonsubscribers - Share tools - Facebook
    #BrowserStackSetup.testSetupBrowserstack
    Locate and Click ST New Stack Facebook
    set test message    "Expect Share - 1 click"

New Stack - Nonsubscribers - Share tools - Twitter
    #BrowserStackSetup.testSetupBrowserstack
    Locate and Click ST New Stack Twitter
    set test message    "Expect Share - 1 click"

New Stack - Nonsubscibers - Video player
    #BrowserStackSetup.testSetupBrowserstack
    Locate and play RV New Stack Safari
    set test message    "Expect Related Video Inset - 1 click"

New Stack - Nonsubscibers - NonSubs Paywall View Membership
    Click View Membership Options on paywall
    set test message    "Expect Paywall View Membership - 1 click"

New Stack - Nonsubscibers - NonSubs Suscribe Paywall
    Click Subscribe button - paywall
    set test message    "Expect Paywall Subscribe - 1 click"

New Stack - Nonsubscibers - NonSubs Subscribe Header
    Click Subscribe button - header
    set test message    "Expect Header Subscribe - 1 click"

New Stack - Nonsusbscribers - Nonsubs WTRN
    Locate and Click WTRN nonsub
    set test message    "Expect WTRN - 1 click"