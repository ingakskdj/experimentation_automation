*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Locate and Click Print Button
    wait until page contains element    css:button[class^="PrintButton__StyledPrintButton"]
    click element    css:button[class^="PrintButton__StyledPrintButton"]
    press keys    None    ESC
#TODO - in safari the popup window doesn't close

driver.switchTo().window(driver.getWindowHandles().toArray()[1].toString());
JavascriptExecutor executor = (JavascriptExecutor) driver.getWebDriver();
executor.executeScript("document.getElementsByClassName('cancel')[0].click();");
driver.switchTo().window(driver.getWindowHandles().toArray()[0].toString());