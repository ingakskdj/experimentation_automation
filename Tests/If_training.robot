*** Settings ***
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/SignIn.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/common.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/BrowserStackSetup.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/FurtherCoverage.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/MastheadNav.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/mastheadnav.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/sharetools.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/InlineLinks.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/Inset.Newsletter.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/Inset.Podcast.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/RightRail.PopularNews.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/RightRail.PopularOpinion.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/RightRail.RecommendedVideos.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/SeriesNav.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/NonSubs_Paywall.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/ArticleTools.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/Printtool.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/WTRN.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/Inset.RelatedVideo.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/ShareTools.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/Follow.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/Ads_Dianomi_Sponsored_Offers.robot
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/Slideshow.robot
Library    SeleniumLibrary
Library    OperatingSystem
Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Variables ***
${TYPE_OF_ARTICLE} =    control
&{ARTICLE_PAGE_URL}    control=https://www.wsj.com/articles/elon-musk-reverses-decision-to-join-twitters-board-twitter-ceo-says-11649648263?optimizely_log=debug&abtype=edge&testing=test&optimizely_x=21631140329    variation_1=https://www.wsj.com/articles/from-walmart-to-gap-which-retailers-have-the-most-excess-inventory-11654776000
${BROWSER} =    chrome
@{USER_CREDENTIALS} =    nameisuseless@ya.ru  tq7D4Kgz!BW69VN
${TIMEOUT} =    20

#variables to be used for running Browserstack Automation
${baseUrl}                     https://www.wsj.com/articles/elon-musk-reverses-decision-to-join-twitters-board-twitter-ceo-says-11649648263?optimizely_log=debug&abtype=edge&testing=test&optimizely_x=21611940294
${os}                          OS X
${osVersion}                   Catalina
${browser}                     chrome
${browserVersion}              latest
${browserstack_userName}       experimentationa9q1xv
${browserstack_accessKey}      Fx6YXr5z7PFyzT9EETcF

#robot -d Results if_training.robot
*** Test Cases ***
#performance lighthouse-batch -s  "https://www.wsj.com/articles/you-cant-digitize-dessert-milk-bars-ceo-on-why-sweets-will-matter-11651935601?mod=series_foefestival2022", "https://www.upbuild.io/blog/lighthouse-reports-for-multiple-pages/" --only-categories ['performance'] --view
#Check the link Author locator 1
#    Authorize for New Stack
#    execute javascript  window.scrollTo(0,200)
#    wait until page contains element    css=a[aria-label^="Author page for"]
#    wait until page contains element    dom:${JSPath}

Eliminate error with outdated selector - with loops
    wait until page contains element    css:div[aria-label='Most Popular News']
    ${links} =    get element count  css=ul[class^="css-ctilq6-List"] > li:nth-child(n)
        FOR   ${index}  IN RANGE  ${links}
        wait until page contains element    xpath=//div/main/div[2]/div[3]/ul/li[${index}+1]
        ${new_link} =  Get WebElement  xpath=//div/main/div[2]/div[3]/ul/li[${index}+1]
        Click Link  ${new_link}
        Execute Javascript  history.back()
        sleep    5
        Exit For Loop If     ${index} == 4
        END

