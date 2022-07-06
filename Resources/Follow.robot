*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Click Author name and Follow button
    Locate Author link and click it
    Locate Follow link and click it

Locate Author link and click it
    execute javascript  window.scrollTo(0,200)
    wait until page contains element    css=a[aria-label^="Author page for"]
    #wait until page contains element    xpath=//button[aria-label='Follow')]
    click element    css=a[aria-label^="Author page for"]
    Execute Javascript  history.back()

Locate Follow link and click it
    execute javascript  window.scrollTo(0,400)
    wait until page contains element    css:div[class^="ArticleByline__FollowButton-sc-1hl3rwk-3"]
    click element    css:div[class^="ArticleByline__FollowButton-sc-1hl3rwk-3"]