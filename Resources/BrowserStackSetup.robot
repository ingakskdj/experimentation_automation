*** Settings ***
Library    AppiumLibrary
Library  SeleniumLibrary

*** Keywords ***
testSetupBrowserstack
    ${remoteUrl}                Set Variable        http://${browserstack_userName}:${browserstack_accessKey}@hub.browserstack.com:80/wd/hub
    &{desiredCapabilities}      Create Dictionary   os=${os}     os_version=${osVersion}     browser=${browser}   browser_version=${browserVersion}
    Open Browser      ${baseUrl}    remote_url=${remoteUrl}     desired_capabilities=${desiredCapabilities}
    maximize browser window