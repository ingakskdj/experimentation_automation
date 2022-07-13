*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    open browser    about:blank    ${BROWSER}
    maximize browser window
    #timeout is outlined in test settings
    set selenium timeout    ${TIMEOUT}
    #Open url
    go to    ${ARTICLE_PAGE_URL.${TYPE_OF_ARTICLE}}

End Web Test
    close browser