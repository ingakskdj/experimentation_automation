*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Locate and click links RV Old Stack
    Locate RRRV
    Click RRRV Old Stack

Locate and Click links RV New Stack
    Locate RRRV
    Click RRRV New Stack

Locate RRRV
    wait until page contains element    css:div[aria-label='Recommended Videos']
    scroll element into view    css:div[aria-label='Recommended Videos']

Click RRRV Old Stack
    wait until page contains element    css:a[href$='trending_now_video_1']
    Execute JavaScript    document.querySelector("a[href$='trending_now_video_1']").click()
    Execute Javascript  history.back()

    wait until page contains element    css:a[href$='trending_now_video_3']
    Execute JavaScript    document.querySelector("a[href$='trending_now_video_3']").click()
    Execute Javascript  history.back()

    #wait until page contains element    css:a[href$='trending_now_video_5']
    #Execute JavaScript    document.querySelector("a[href$='trending_now_video_5']").click()
    #Execute Javascript  history.back()
Click RRRV New Stack
    #link1
    wait until page contains element    css=ul[class^="MostPopularLazyLoad__List-sc-8zlmiv-1"] > li:nth-child(1)
    click element    css=ul[class^="MostPopularLazyLoad__List-sc-8zlmiv-1"] > li:nth-child(1)
    Execute Javascript  history.back()

    sleep    5
    #link3
    wait until page contains element    css=ul[class^="MostPopularLazyLoad__List-sc-8zlmiv-1"] > li:nth-child(3)
    click element    css=ul[class^="MostPopularLazyLoad__List-sc-8zlmiv-1"] > li:nth-child(3)
    Execute Javascript  history.back()

    sleep    5
    #link5
    wait until page contains element    css=ul[class^="MostPopularLazyLoad__List-sc-8zlmiv-1"] > li:nth-child(5)
    click element    css=ul[class^="MostPopularLazyLoad__List-sc"] > li:nth-child(5)
    Execute Javascript  history.back()

    #sleep    5

Click RRRV New Stack Safari
    wait until page contains element    css:div[aria-label='Recommended Videos']
    execute javascript  window.scrollTo(0,2500)
    wait until page contains element    css=ul[class^="MostPopularLazyLoad__List-sc-8zlmiv-1"] > li:nth-child(1)
    click element    css=ul[class^="MostPopularLazyLoad__List-sc-8zlmiv-1"] > li:nth-child(1)
    Execute Javascript  history.back()

    sleep    5
    #link3
    wait until page contains element    css=ul[class^="MostPopularLazyLoad__List-sc-8zlmiv-1"] > li:nth-child(3)
    click element    css=ul[class^="MostPopularLazyLoad__List-sc-8zlmiv-1"] > li:nth-child(3)
    Execute Javascript  history.back()

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