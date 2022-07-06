*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Locate, preview, subscribe and unsubscribe NL Old Stack
#Precondition - the account shouldn't be signed up to the newsletter
    Locate NL Old Stack
    Subscribe NL Old Stack
    Unsubscribe NL Old Stack
    Preview NL Old Stack

Locate, preview, subscribe and unsubscribe NL New Stack
    Locate NL New Stack
    Subscribe NL New Stack
    Unsubscribe NL New Stack
    Preview NL New Stack

Locate NL Old Stack
    wait until page contains element    css:div[id='webui_newsletter_inset']
    scroll element into view    css:div[id='webui_newsletter_inset']

Subscribe NL Old Stack
    wait until page contains element    css:div[class^='WSJTheme--toggle']
    Execute JavaScript    document.querySelector("div[class^='WSJTheme--toggle']").click()
    #add check if the user is subscribed

Unsubscribe NL Old Stack
    #precondition: step "click on Subscribe Toggle bar" is required
    wait until page contains element    css:div[class^='WSJTheme--toggle']
    Execute JavaScript    document.querySelector("div[class^='WSJTheme--toggle']").click()
    wait until page contains element    css:div[class^="ArticleInsetNewsletterCard--confirmation-buttons"]
    wait until page contains element    css:button[class^='ArticleInsetNewsletterCard--unsub-button']
    Execute JavaScript    document.querySelector("button[class^='ArticleInsetNewsletterCard--unsub-button']").click()

Preview NL Old Stack
    wait until page contains element    css:button[class^='ArticleInsetNewsletterCard--preview-button']
    Execute JavaScript    document.querySelector("button[class^='ArticleInsetNewsletterCard--preview-button']").click()

Locate NL New Stack
    #scroll to the element
    wait until page contains element    css:div[data-inset_type="newsletterinset"]
    scroll element into view    css:div[data-inset_type="newsletterinset"]

Subscribe NL New Stack
    wait until page contains element    css:button[id^='headlessui-switch']
    Execute JavaScript    document.querySelector("button[id^='headlessui-switch']").click()
    sleep    5

Unsubscribe NL New Stack
    wait until page contains element    css:button[id^='headlessui-switch']
    Execute JavaScript    document.querySelector("button[id^='headlessui-switch']").click()
    wait until page contains element    css:div[class="Confirmation__ButtonsWrapper-sc-aznym6-2 cKvrHi"]
    wait until page contains element    css:button[class^='Confirmation__ConfirmationButton']
    Execute JavaScript    document.querySelector("button[class^='Confirmation__ConfirmationButton']").click()
    sleep    5

Preview NL New Stack
    wait until page contains element    css:button[class='Preview__PreviewButton-sc-14hgrww-1 eZDVSJ']
    Execute JavaScript    document.querySelector("button[class='Preview__PreviewButton-sc-14hgrww-1 eZDVSJ']").click()
    sleep    5

