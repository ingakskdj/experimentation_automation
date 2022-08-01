*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Locate and Click Print Button
    wait until page contains element    css:button[class*="StyledPrintButton"]
    click element    css:button[class*="StyledPrintButton"]
    #press keys    None    ESC
#TODO - in safari the popup window doesn't close

Verify popup print settings window is open
    page should contain element    css:cr-button[class="action-button"]


driver.switchTo().window(driver.getWindowHandles().toArray()[1].toString());
JavascriptExecutor executor = (JavascriptExecutor) driver.getWebDriver();
executor.executeScript("document.getElementsByClassName('cancel')[0].click();");
driver.switchTo().window(driver.getWindowHandles().toArray()[0].toString());



