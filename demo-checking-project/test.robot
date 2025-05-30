*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://www.google.com
${BROWSER}        Chrome
${SEARCH_TERM}    Robot Framework

*** Test Cases ***
Search in Google and Verify Results
    [Documentation]    Opens Google, searches for a term, and verifies results appear.
    Open Browser    ${URL}    ${BROWSER}
    Input Text      name=q    ${SEARCH_TERM}
    Press Keys      name=q    \\13
    Wait Until Page Contains Element    xpath=//h3    timeout=10s
    Page Should Contain Element    xpath=//h3
    Close Browser
