*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
#TODO Introduce loops
Locate and click IL New Stack
    wait until page contains element    css:a[data-type='link']
    scroll element into view    css:a[data-type='link']
    Execute JavaScript    document.querySelector("a[data-type='link']").click()
    Sleep    5

Locate and click IL New Stack Safari
    wait until page contains element    css:a[data-type='link']
    execute javascript  window.scrollTo(0,200)
    Execute JavaScript    document.querySelector("a[data-type='link']").click()
    Sleep    5

Locate and click IL Old Stack
    wait until page contains element    css=a[href$='mod=article_inline']
    click element    css=a[href$='mod=article_inline']
    #Execute JavaScript    document.querySelector("css=a[href$='mod=article_inline']").click()

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