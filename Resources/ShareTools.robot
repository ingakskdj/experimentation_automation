*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
#these are keywords with full steps in one
Locate and Click ST New Stack Facebook
    Locate ST
    Share with Facebook

Locate and Click ST New Stack Twitter
    Locate ST
    Share with Twitter

Locate and Click ST New Stack Linkedin
    Locate ST
    Share with Linkedin

Locate and Click ST New Stack Share Link
    Locate ST
    Share with a link

Locate and Click ST Email Share Link
    Locate ST
    Share with email
#these are keywords with isolated steps
Locate ST
# adding these to comments because it doesn't work for firefox and safari
#    wait until page contains element    css:div[class^="sharedStyles__ShareMenuContainer"]
#    click element    css:div[class^="sharedStyles__ShareMenuContainer"]
    wait until page contains element    css:ul[aria-labelledby="share-tools-title"]
    mouse over    css:ul[aria-labelledby="share-tools-title"]
    sleep    5

Share with Facebook
    wait until page contains element    css=ul[class^="css-10k3b4c-List"] > li:nth-child(1)
    click element    css=ul[class^="css-10k3b4c-List"] > li:nth-child(1)
    sleep    5

Share with Twitter
    wait until page contains element    css=ul[class^="css-10k3b4c-List"] > li:nth-child(2)
    click element    css=ul[class^="css-10k3b4c-List"] > li:nth-child(2)
    sleep    5

Share with Linkedin
    wait until page contains element    css=ul[class^="css-10k3b4c-List"] > li:nth-child(3)
    click element    css=ul[class^="css-10k3b4c-List"] > li:nth-child(3)
    sleep    5

Share with a link
    wait until page contains element    css=ul[class^="css-10k3b4c-List"] > li:nth-child(4)
    click element    css=ul[class^="css-10k3b4c-List"] > li:nth-child(4)

Share with email
    wait until page contains element    css=ul[class^="css-10k3b4c-List"] > li:nth-child(5)
    click element    css=ul[class^="css-10k3b4c-List"] > li:nth-child(5)
    sleep    5
#these are assertions
Facebook sharing window open
    page should contain element    id:email_container

Twitter sharing window open
    page should contain element    css:div[role="button"]

Linkedin sharing window open
    page should contain element    css:button[type="submit"]

Sharing link successfully copied
    element text should be    css=ul[class^="css-10k3b4c-List"] > li:nth-child(4) > button[class^="css-1ypjenu-Item"]    COPIED

Sharing via email popup is present
    page should contain element    css=button.css-1sfefww-EmailDialogButton
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
