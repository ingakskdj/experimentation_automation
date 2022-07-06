*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Click Header and Paywall Suscribe buttons and View Membership Options
    Click View Membership Options on paywall
    Click Subscribe button - paywall
    Click Subscribe button - header

Click View Membership Options on paywall
    wait until page contains element    css:a[class^="ScenarioStandard__StandalonePrimaryButton"]
    click element    css:a[class^="ScenarioStandard__StandalonePrimaryButton"]
    page should contain element   css: button[class="btn btn--alt btn-join"]
    Execute Javascript  history.back()
    sleep    5

Click Subscribe button - paywall
    wait until page contains element    css:a[class^="sharedStyles__PrimaryButtonLink-sc-f0fwhe-0"]
    click element    css:a[class^="sharedStyles__PrimaryButtonLink-sc-f0fwhe-0"]
    page should contain element   css: button[class="btn btn--alt btn-join"]
    Execute Javascript  history.back()
    sleep    5

Click Subscribe button - header
    wait until element is enabled    css:div[class^="UserLogin__SubscribeOptionWrapper-sc"]
    click element    css:div[class^="UserLogin__SubscribeOptionWrapper-sc"]
    page should contain element   css: button[class="btn btn--alt btn-join"]
    Execute Javascript  history.back()
    sleep    5
