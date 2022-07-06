*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Locate, play, subscribe and click audio control Podcast New Stack
    Locate Type 1 PC
    sleep    5
    Click Play PC
    sleep    5
    Click Subscribe PC
    sleep    5
    Click Audio Control PC
    sleep    5

Locate, play, subscribe and click audio control Podcast Old Stack
    Locate Type 2 PC
    Click Play PC
    Click Subscribe PC
    Click Audio Control PC

Locate Type 1 PC
    wait until page contains element    css:div[data-type='media']
    scroll element into view    css:div[data-type='media']
    sleep    5

Locate Type 2 PC
    wait until page contains element    css:div[class='media-object-podcast']
    scroll element into view    css:div[class='media-object-podcast']

Click Play PC
    wait until page contains element    css:button[aria-label='Play']
    Execute JavaScript    document.querySelector("button[aria-label='Play']").click()
    sleep    5
    Execute JavaScript    document.querySelector("button[aria-label='Play']").click()
    sleep    5

Click Audio Control PC
    wait until page contains element    css:a[href^="https://itunes.apple.com/us/podcast/"]
    Execute JavaScript    document.querySelector("button.audio-volume").click()
    sleep    5

Click Subscribe PC
    wait until page contains element    css:div.dropdown
    mouse over    css:div.dropdown
    click element    css:a[href^="https://itunes.apple.com/us/podcast/"]

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