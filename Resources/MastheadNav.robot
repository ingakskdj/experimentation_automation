*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Locate and click breadcrumb Old Stack
    wait until page contains element    css:a[href$="mod=breadcrumb"]
    click element    css:a[href$="mod=breadcrumb"]
    Execute Javascript  history.back()

Locate and Click Masthead Nav and Breadcrumbs New Stack
    Locate and click Breadcrumb New Stack
    Locate and click Main Logo New Stack
    Locate and click Top Masthead Nav New Stack

Locate and click Breadcrumb New Stack
    wait until page contains element    css=ul[class^="Breadcrumbs__List"] > li:nth-child(1)
    click element    css=ul[class^="Breadcrumbs__List"] > li:nth-child(1)
    Execute Javascript  history.back()
    sleep    5

Locate and click Main Logo New Stack
    wait until page contains element    css:a[href='https://www.wsj.com/']
    Execute JavaScript    document.querySelector("a[href='https://www.wsj.com/']").click()
    Execute Javascript  history.back()

    sleep    5

Locate and click Top Masthead Nav New Stack
    wait until page contains element    css=ul[class^="PrimaryNav__NavItems-sc-1lc95gh-0"] > li:nth-child(2)
    click element    css=ul[class^="PrimaryNav__NavItems-sc-1lc95gh-0"] > li:nth-child(2)
    Execute Javascript  history.back()

    sleep    5