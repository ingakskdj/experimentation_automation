*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Locate and Click Series Nav
    wait until element is visible    css:img[class^="sc-jRQBWg kHpTAP"]
    click element    css:img[class^="sc-jRQBWg kHpTAP"]

    #TODO to automate clicks on 2 more elements or loops
#    sleep    5
#
#    wait until element is visible    xpath:/html/body/div[2]/div/article/section/div/section/div/div[8]/div/div[2]/a[3]/img
#    click element    xpath:/html/body/div[2]/div/article/section/div/section/div/div[8]/div/div[2]/a[3]/img
#    Execute Javascript  history.back()
#    sleep    5
#
#    wait until element is visible    xpath:/html/body/div[2]/div/article/section/div/section/div/div[8]/div/div[2]/a[7]/img
#    click element    xpath:/html/body/div[2]/div/article/section/div/section/div/div[8]/div/div[2]/a[7]/img
#    Execute Javascript  history.back()

    #scroll element into view    css:div[aria-label="Conversation"]
    #wait until page contains element    css:div[class="module"]
    #scroll element into view    css:div[data-campaign-id="152"]
    #click element    xpath:/html/body/div[2]/div/article/section/div/section/div/div[8]/div/div/div/div/div/div[2]/div[1]/a/img
    #Execute Javascript  history.back()


