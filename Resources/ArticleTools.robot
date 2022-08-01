*** Settings ***
Library  SeleniumLibrary
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/PrintTool.robot

*** Keywords ***
Locate and Click Article Tools
    Locate and Click Save Button
    Locate and Click Font Size Button
    Locate and Click Play
    Locate and Click Print Button

Locate and Click Save Button
    wait until page contains element    css:button[class*="StyledSaveButton"]
    click element    css:button[class*="StyledSaveButton"]
    sleep    5
# don't work for current new stack link
#    wait until page contains element    css:button[class^="SaveButton__StyledSaveButton-sc-g0dr8p-0"]
#    click element    css:button[class^="SaveButton__StyledSaveButton-sc-g0dr8p-0"]
#    sleep    5

Locate and Click Font Size Button
    wait until page contains element    css:button[id*="headlessui-popover-button"]
    click element    css:button[id*="headlessui-popover-button"]
    sleep    5
    wait until page contains element    css:div[class^="TextResize__PopoverPanel"]
    click element    css:div[class^="TextResize__PopoverPanel"]
    sleep    5

#works
Locate and Click Play
    wait until page contains element    css:div[class="controls-container"]
    click element    css:div[class="controls-container"]
    sleep    5

Verify label Save is changed to Saved
    element text should be    css:span[class^='css-ap76u5-StyledText']  SAVED

Verify saved article is in saved content
    ${article_headline_source}=    get text    css:h1[class^="css-1lvqw7f-StyledHeadline"]
    wait until page contains element    id:headlessui-popover-button-42
    click element    css:button[id^="headlessui-popover-button"]
    wait until page contains element    css=ul[class^="e22obk76"] > li:nth-child(4)
    click element    css=ul[class^="e22obk76"] > li:nth-child(4)
    sleep    5
    ${article_headline_saved}=    get text    css:div[class="WSJTheme--headline-wrapper--1JOJEw9h "]