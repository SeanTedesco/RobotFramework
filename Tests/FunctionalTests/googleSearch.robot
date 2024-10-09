*** Settings ***
Documentation    Example using the space seperated format.
Library          OperatingSystem

*** Variables ***
${MESSAGE}        Hello, World!

*** Test Cases ***
My Test
    [Documentation]    Example Test
    Log    ${MESSAGE}
    My Keyword    ${CURDIR}

Another Test
    Should Be Equal    ${MESSAGE}    Hello, World!

*** Keywords ***
My Keyword
    [Arguments]    ${path}
    Directory Should Exist    ${path}