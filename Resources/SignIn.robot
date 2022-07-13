*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Authorize for New Stack
    #Click login link
    wait until element is visible    css:div[class^="UserLogin__LoginOptionWrapper"]
    click element   css:div[class^="UserLogin__LoginOptionWrapper"]
    #Send username
    wait until element is visible    css:input#username
    input text    css=input#username  ${USER_CREDENTIALS}[0]
    #Click continue with password
    wait until element is visible    css:button[type=button]
    click button    Continue With Password
    #Send password
    wait until element is visible    id:password-login-password
    input text    id:password-login-password    ${USER_CREDENTIALS}[1]
    #improving locator
    wait until element is visible    	css:button.solid-button.new-design.basic-login-submit
    click element    css:button.solid-button.new-design.basic-login-submit

Authorize for Old Stack
    go to    ${ARTICLE_PAGE_URL.${TYPE_OF_ARTICLE}}
    wait until element is visible    css:a[class^="style--masthead-strap"]
    click element   css:a[class^="style--masthead-strap"]
    wait until element is visible    css:input#username
    input text    css=input#username  ${USER_CREDENTIALS}[0]
    wait until element is visible    css:button[type=button]
    click button    Continue With Password
    wait until element is visible    id:password-login-password
    input text    id:password-login-password    ${USER_CREDENTIALS}[1]
    wait until element is visible    	xpath: /html/body/div[1]/div[2]/div/div/div/div[20]/div/form/div/div[5]/div[1]/button
    click element    xpath: /html/body/div[1]/div[2]/div/div/div/div[20]/div/form/div/div[5]/div[1]/button