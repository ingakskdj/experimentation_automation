*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Locate and Click ST New Stack
    Locate ST
    Share with Facebook
    Share with Twitter

Locate ST
# adding these to comments because it doesn't work for firefox and safari
#    wait until page contains element    css:div[class^="sharedStyles__ShareMenuContainer"]
#    click element    css:div[class^="sharedStyles__ShareMenuContainer"]
    wait until page contains element    css:ul[aria-labelledby="share-tools-title"]
    mouse over    css:ul[aria-labelledby="share-tools-title"]
    sleep    5
#TODO - not working now
Share with Facebook
    wait until page contains element    css:a[href^="https://www.facebook.com/"]
    click element    css:a[href^="https://www.facebook.com/"]
    sleep    5

Share with Twitter
    wait until page contains element    css:a[href^="https://twitter.com/"]
    click element    css:a[href^="https://twitter.com/"]
    sleep    5

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
