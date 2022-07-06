*** Settings ***
Library  SeleniumLibrary
Resource    /Users/aliakskinai/Documents/Robot Framework/pythonProject/WebProductConstructor/Resources/PrintTool.robot

*** Keywords ***
Locate and Click Article Tools
    Locate and Click Save Button
    Locate and Click Font Size Button
    Locate and Click Play
    Locate and Click Print Button

Locate and Click Save Button
    wait until page contains element    css:button[class^="SaveButton__StyledSaveButton"]
    click element    css:button[class^="SaveButton__StyledSaveButton"]
    sleep    5
# don't work for current new stack link
#    wait until page contains element    css:button[class^="SaveButton__StyledSaveButton-sc-g0dr8p-0"]
#    click element    css:button[class^="SaveButton__StyledSaveButton-sc-g0dr8p-0"]
#    sleep    5

Locate and Click Font Size Button
    wait until page contains element    css:button[class^="TextResize__Button"]
    click element    css:button[class^="TextResize__Button"]
    sleep    5
    wait until page contains element    css:div[class^="TextResize__PopoverPanel"]
    click element    css:div[class^="TextResize__PopoverPanel"]
    sleep    5

#works
Locate and Click Play
    wait until page contains element    css:div[class="controls-container"]
    click element    css:div[class="controls-container"]
    sleep    5
