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
Test Setup    testSetupBrowserstack
Test Teardown    End Web Test

*** Variables ***
${TYPE_OF_ARTICLE} =    variation_1
&{ARTICLE_PAGE_URL}    control=https://www.wsj.com/articles/the-unbearable-lightness-of-biden-joe-president-speeches-beliefs-left-wing-progressive-trump-11644859341    variation_1=https://www.wsj.com/articles/from-walmart-to-gap-which-retailers-have-the-most-excess-inventory-11654776000
${BROWSER} =    chrome
@{USER_CREDENTIALS} =    nameisuseless@ya.ru  tq7D4Kgz!BW69VN
${TIMEOUT} =    250

#variables to be used for running Browserstack Automation
${baseUrl}                     https://www.wsj.com/articles/biden-says-he-is-considering-canceling-some-student-loan-debt-11651161126?dd_bucket_override=0-29&dd_show=82P&dd_preview=0&next_redirect=true
${os}                          windows
${osVersion}                   11
${browser}                     chrome
${browserVersion}              100
${browserstack_userName}       experimentationa9q1xv
${browserstack_accessKey}      Fx6YXr5z7PFyzT9EETcF
#variable to trace the path to shadow root
#${JSPath}=    document.querySelector('div#__next')    #1
#    ...  .querySelector('div.standardStyles__LayoutGrid-sc-1c1lpqz-0.ivJYVg')  #2
#    ...  .querySelector('main.standardStyles__MainContainer-sc-1c1lpqz-1.gvTEDQ')  #3
#    ...  .querySelector('article.standardStyles__ArticleBodyContainer-sc-1c1lpqz-2.iAcjke')  #4
#    ...  .querySelector('div.sharedStyles__ArticleSpacing-sc-1ext442-9.fcWDIv')  #5
#    ...  .querySelector('div.Box-sc-m4230u-0.ArticleBodyContent__BylineTimestampWrapper-sc-1tvcld3-0.iooXwK.kPUuCZ')  #6
#    ...  .querySelector('div.ArticleByline__Container-sc-1hl3rwk-0.fEsnok')  #7
#    ...  .querySelector('span.ArticleByline__AuthorContainer-sc-1hl3rwk-2.iuNcJs')  #8
#    ...  .querySelector('div.ArticleByline__FollowButton-sc-1hl3rwk-3.hHvbUk')  #9
#    ...  .querySelector('ufc-follow-author-widget').shadowRoot   #10
#    ...  .querySelector('ufc-follow-button.wsj.hydrated').shadowRoot  #11
#    ...  .querySelector('button')    #12

#robot -d Results if_training.robot
*** Test Cases ***
#performance lighthouse-batch -s  "https://www.wsj.com/articles/you-cant-digitize-dessert-milk-bars-ceo-on-why-sweets-will-matter-11651935601?mod=series_foefestival2022", "https://www.upbuild.io/blog/lighthouse-reports-for-multiple-pages/" --only-categories ['performance'] --view
#Check the link Author locator 1
#    Authorize for New Stack
#    execute javascript  window.scrollTo(0,200)
#    wait until page contains element    css=a[aria-label^="Author page for"]
#    wait until page contains element    dom:${JSPath}

Test to check better locators - CSS in place of absolute path
    Authorize for New Stack

#    ${ele}    Get WebElement    document.querySelector("#__next > div > main > article > div > div.Box-sc-m4230u-0.ArticleBodyContent__BylineTimestampWrapper-sc-1tvcld3-0.iooXwK.kPUuCZ > div > span > div > ufc-follow-author-widget").shadowRoot.querySelector("ufc-follow-button").shadowRoot.querySelector("button")
#    Execute Javascript    arguments[0].shadowRoot.click();     ARGUMENTS    ${ele}




#    execute javascript  window.scrollTo(0,200)
#    wait until page contains element    css=a[aria-label^="Author page for"]


#    host = driver.find_element_by_id("shell"))
#    driver.execute_script("return arguments[0].shadowRoot.getElementById('avatar').click()", host)
#    ${ele}    Get WebElement    xpath = //*[@id="__next"]/div/main/article/div/div[2]/div/span/div/ufc-follow-author-widget//ufc-follow-button
#    Execute Javascript    arguments[0].shadowRoot.click();     ARGUMENTS    ${ele}




#    wait until element is enabled    css=div[data-skip-label="What to Read Next"]
#    click element    xpath = /html/body/div[2]/div/article/section/div/div[7]/div/div/div/div[2]/a/div[1]/img
#    Execute Javascript  history.back()
#    sleep    5
#    ${links} =    get element count    xpath = /html/body/div[2]/div/article/section/div/div[7]/div/div/div/div
#        FOR   ${index}  IN RANGE  ${links}
#        wait until element is enabled    css=div[data-skip-label="What to Read Next"]
#        ${new_link} =  Get WebElement    xpath = /html/body/div[2]/div/article/section/div/div[7]/div/div/div/div[${index}+1]
#        Wait Until Page Contains Element  ${new_link}
#        Click Link  ${new_link}
#        Execute Javascript  history.back()
#        sleep    5
#        END

#    wait until page contains element    css:ul[aria-labelledby="share-tools-title"]
#    mouse over    css:ul[aria-labelledby="share-tools-title"]
#    sleep    5
#    wait until page contains element    css:a[href^="https://www.facebook.com/sharer"]
#    click element    css:a[href^="https://www.facebook.com/sharer"]
#    sleep    5
#    wait until page contains element    css:a[href^="https://twitter.com/intent/"]
#    click element    css:a[href^="https://twitter.com/intent/"]
#    sleep    5
#    wait until page contains element    css:a[href^="https://www.linkedin.com/shareArticle?"]
#    click element    css:a[href^="https://www.linkedin.com/shareArticle?"]

    #Locate and Click WTRN sub
#New Stack - Series Nav
#    Authorize for New Stack
#    #${count} =    get element count    css=a[href$="mod=series_rusukrainenato"]
#    wait until element is visible    css=a[href$="mod=series_rusukrainenato"]
#    /html/body/div[2]/div/article/section/div/section/div[2]/div[5]/div/div[2]/a[1]/img
#    #click element    css=a[href$="mod=series_rusukrainenato"]

    #Register Keyword To Run On Failure    set test message

#    @{elementList} =    get webelements    css=ul[class^="MostPopular__List-sc-pxt6ut-1"] > li:nth-child(n)
#    FOR  ${element}  IN  @{elementList}
#        wait until page contains element    ${element}
#        click element    ${element}
#        Execute Javascript  history.back()
#
#    END

#solution1 - using element index
#    ${links} =  SeleniumLibrary.Get Element Count  ${ul_location}/li/a
#
#    FOR  ${index}  IN RANGE  ${links}
#        ${new_link} =  Get WebElement  ${ul_location}/li[${index} + 1]/a
#        Wait Until Page Contains Element  ${new_link}
#        Mouse Over  ${new_link}
#        Click Link  ${new_link}
#        ${title} =  Get Title
#        Should Not Be Equal  ${title}  Page not found | Coupa Cloud Platform for Business Spend | Travel and Expense Management, Procurement, and Invoicing   msg='Navlinks should not go to 404 URL'
#    END

#this test gives an error stale element reference exception
#    @{elementList} =    get webelements    css=ul[class^="MostPopular__List-sc-pxt6ut-1"] > li:nth-child(n)
#    FOR  ${element}  IN  @{elementList}
#        wait until page contains element    ${element}\[0]
#        click element    ${element}\[0]
#        Execute Javascript  history.back()
#    END


#WTRN automation effort
#Check presence
#    click element    xpath=//*[@id="cXLinkIdl2kpwugjh50imcqm"]/div[2]/h3

    #Link New Stack with Podcast, Series Nav, video
    #https://www.wsj.com/articles/russia-built-parallel-payments-system-that-escaped-western-sanctions-11648510735
    #try to locate and trigger events for Newsletter
#    ${status}    ${value} =  Run Keyword And Ignore Error    wait until page contains element   css=div[id='webui_newsletter_inset']
#    Run Keyword If    '${status}'=='PASS'    Click Link    css=div[id='webui_newsletter_inset']    ELSE    log to console    "no newsletter"

    #${newsletter present} =  wait until page contains element   css=div[id='webui_newsletter_inset']
    #Run Keyword If    ${newsletter present}    Click Link    css=div[id='webui_newsletter_inset']    ELSE    log to console    "no newsletter found"

    #other functions need to be run only if the element is located are true

    #${status}    ${value} =  Run Keyword And Ignore Error    wait until page contains element   css:div[id='webui_newsletter_inset']
    #Run Keyword If    '${status}'=='PASS'    Click Link    css:div[id='webui_newsletter_inset']    ELSE    log to console    "no inline link"

    #a version to run with fail status if the element is not located
    #${logout present}=    wait until page contains element   css=a[href$='mod=article_inline']
    #Run Keyword If    ${logout present}    Click Link    css=a[href$='mod=article_inline']    ELSE    log to console    "no inline link"

    #this part helps to avoid fail status when the element is not located but can give false positive when the element is present but wasn't detected
    #success
    #${status}    ${value}=    Run Keyword And Ignore Error    wait until page contains element   css=a[href$='mod=article_inline']
    #Run Keyword If    '${status}'=='PASS'    Click Link    css=a[href$='mod=article_inline']    ELSE    log to console    "no inline link"

 #successful test for Inline links, Newsletter, Most popular news, Most popular opinion, Masthead navigation and breadcrumbs
    #url: https://www.wsj.com/articles/putin-sees-a-west-united-on-ukrainebut-what-about-china-and-india-11646234045
    #Authorize for New Stack
    #Locate and click IL New Stack
    #Locate, preview, subscribe and unsubscribe NL New Stack
    #Locate and Click links MPN New Stack
    #Locate and Click links MPO New Stack
    #Locate and Click Masthead Nav and Breadcrumbs New Stack

    #url:https://www.wsj.com/articles/elon-musk-offers-to-buy-rest-of-twitter-for-54-20-a-share-11649932296
    #Authorize for New Stack
    #Locate and click IL New Stack
    #Locate and Click links MPN New Stack
    #Locate and Click links MPO New Stack
    #Locate and Click Masthead Nav and Breadcrumbs New Stack
    #ShowConversation.Click SC

    #url: https://www.wsj.com/articles/putin-sees-a-west-united-on-ukrainebut-what-about-china-and-india-11646234045
    #good url to check further coverage
