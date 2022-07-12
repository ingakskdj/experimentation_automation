*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Locate and click links MPO Old Stack
    Locate MPO
    Click MPO Old Stack

Locate and Click links MPO New Stack
    Locate MPO
    Click MPO New Stack Loop

Locate MPO
    wait until page contains element    css:div[aria-label='Most Popular Opinion']
    scroll element into view    css:div[aria-label='Most Popular Opinion']

Click MPO Old Stack
    wait until page contains element    css:a[href$='trending_now_opn_1']
    Execute JavaScript    document.querySelector("a[href$='trending_now_opn_1']").click()
    Execute Javascript  history.back()
    sleep    5

    #wait until page contains element    css:a[href$='trending_now_opn_3']
    #Execute JavaScript    document.querySelector("a[href$='trending_now_opn_3']").click()
    #Execute Javascript  history.back()
    #sleep    5

    #wait until page contains element    css:a[href$='trending_now_opn_5']
    #Execute JavaScript    document.querySelector("a[href$='trending_now_opn_5']").click()
    #Execute Javascript  history.back()

Click MPO New Stack Loop
#TODO there is a constant exception in firefox - MoveTargetOutOfBoundsException
    ${links} =    get element count  css=ul[class^="MostPopular__List-sc-pxt6ut-1"] > li:nth-child(n)
        FOR   ${index}  IN RANGE  ${links}
        wait until page contains element    xpath=/html/body/div[2]/div/article/aside/div[3]/ul/li[${index}+1]
        ${new_link} =  Get WebElement  xpath=/html/body/div[2]/div/article/aside/div[3]/ul/li[${index}+1]
        Click Link  ${new_link}
        Execute Javascript  history.back()
        sleep    5
        Exit For Loop If     ${index} == 4
        END

Click MPO New Stack
    wait until page contains element    css:div[aria-label='Most Popular Opinion']
    wait until page contains element    css=ul[class^="MostPopular__List-sc-pxt6ut-1"] > li:nth-child(1)
    click element    css=ul[class^="MostPopular__List-sc-pxt6ut-1"] > li:nth-child(1)
    Execute Javascript  history.back()

#    sleep    5
#    #link2
#    wait until page contains element    css=ul[class^="MostPopular__List-sc-pxt6ut-1"] > li:nth-child(3)
#    click element    css=ul[class^="MostPopular__List-sc-pxt6ut-1"] > li:nth-child(3)
#    Execute Javascript  history.back()


#@RobotKeyword
#@ArgumentNames({"windowsTitle"})
#public void changeFocusToWindow(String windowsTitle) throws InterruptedException {
#
#            WebDriver driver = getCurrentWebDriver();
#    Set<String> windowsHandle = getWindowsHandler();
#    logging.info("Count of open Windows by WebDriver Instance "+windowsHandle.size());
#    for (String sHandler : windowsHandle) {
#
#        if (driver.switchTo().window(sHandler).getTitle().contains(windowsTitle)) {
#            //windowHandleDriver=driver.switchTo().window(sHandler);
#            logging.info("After Window context Switch the current working Window Page title is " + driver.getTitle());
#            break;
#        }
#    }
#}
