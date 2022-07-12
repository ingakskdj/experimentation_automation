*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Locate and Click links MPN Old Stack
    Locate MPN
    Click MPN Old Stack

Locate and Click links MPN New Stack
    Locate MPN
    Click MPN New Stack

Locate MPN
    wait until page contains element    css:div[aria-label='Most Popular News']
    #scroll element into view    css:div[aria-label='Most Popular News']
    sleep    5

Click MPN Old Stack
    #link1
    wait until page contains element    css:a[href$='trending_now_news_1']
    Execute JavaScript    document.querySelector("a[href$='trending_now_news_1']").click()
    Execute Javascript  history.back()
    sleep    5

    #link2
    wait until page contains element    css:a[href$='trending_now_news_3']
    Execute JavaScript    document.querySelector("a[href$='trending_now_news_3']").click()
    Execute Javascript  history.back()
    sleep    5
    #link3
    wait until page contains element    css:a[href$='trending_now_news_5']
    Execute JavaScript    document.querySelector("a[href$='trending_now_news_5']").click()
    Execute Javascript  history.back()

Click MPN New Stack Loop
#works with Chrome
#TODO there is a constant exception in firefox - MoveTargetOutOfBoundsException
    ${links} =    get element count  css=ul[class^="MostPopular__List-sc-pxt6ut-1"] > li:nth-child(n)
        FOR   ${index}  IN RANGE  ${links}
        ${new_link} =  Get WebElement  xpath=/html/body/div[2]/div/article/aside/div[2]/ul/li[${index}+1]
        Wait Until Page Contains Element  ${new_link}
        Mouse Over  ${new_link}
        Click Link  ${new_link}
        Execute Javascript  history.back()
        sleep    5
        Exit For Loop If     ${index} == 4
        END
    #archive this suite since it doesn't use the loop
Click MPN New Stack
#works with Safari
    wait until page contains element    css:div[aria-label='Most Popular News']
    #link1
    wait until page contains element    css=ul[class^="MostPopular__List-sc-pxt6ut-1"] > li:nth-child(1)
    click element    css=ul[class^="MostPopular__List-sc-pxt6ut-1"] > li:nth-child(1)
    Execute Javascript  history.back()

#    wait until page contains element    css:div[aria-label='Most Popular News']
#    #link1
#    wait until page contains element    css=ul[class^="MostPopular__List-sc-pxt6ut-1"] > li:nth-child(2)
#    click element    css=ul[class^="MostPopular__List-sc-pxt6ut-1"] > li:nth-child(2)
#    Execute Javascript  history.back()
#
#    sleep    5
#    #link2
#    wait until page contains element    css=ul[class^="MostPopular__List-sc-pxt6ut-1"] > li:nth-child(3)
#    click element    css=ul[class^="MostPopular__List-sc-pxt6ut-1"] > li:nth-child(3)
#    Execute Javascript  history.back()
#
#    sleep    5
#    #link2
#    wait until page contains element    css=ul[class^="MostPopular__List-sc-pxt6ut-1"] > li:nth-child(4)
#    click element    css=ul[class^="MostPopular__List-sc-pxt6ut-1"] > li:nth-child(4)
#    Execute Javascript  history.back()
#
#    sleep    5
#    #link2
#    wait until page contains element    css=ul[class^="MostPopular__List-sc-pxt6ut-1"] > li:nth-child(5)
#    click element    css=ul[class^="MostPopular__List-sc-pxt6ut-1"] > li:nth-child(5)
#    Execute Javascript  history.back()
#    sleep    5

#    sleep    5
#    #link5
#    wait until page contains element    css=ul[class^="MostPopular__List-sc-pxt6ut-1"] > li:nth-child(5)
#    click element    css=ul[class^="MostPopular__List-sc-pxt6ut-1"] > li:nth-child(5)
#    Execute Javascript  history.back()

@RobotKeyword
@ArgumentNames({"windowsTitle"})
public void changeFocusToWindow(String windowsTitle) throws InterruptedException {

            WebDriver driver = getCurrentWebDriver();
    Set<String> windowsHandle = getWindowsHandler();
    logging.info("Count of open Windows by WebDriver Instance "+windowsHandle.size());
    for (String sHandler : windowsHandle) {

        if (driver.switchTo().window(sHandler).getTitle().contains(windowsTitle)) {
            //windowHandleDriver=driver.switchTo().window(sHandler);
            logging.info("After Window context Switch the current working Window Page title is " + driver.getTitle());
            break;
        }
    }
}

