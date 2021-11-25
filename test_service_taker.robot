*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library         SeleniumLibrary

*** Variables ***
# variable names can contain spaces
${URL}    https://vaccine-haven.herokuapp.com/
${BROWSER}      Chrome
${CITIZEN_ID}  9621054543265
${SITE_NAME}  OGYHSite
${Vaccine}  Astra


*** Keywords ***
Open the browser
    Set Selenium Speed    0.5 seconds
    Open Browser  ${URL}  ${BROWSER}
    Title Should Be  Vaccine Haven

Verify Registration
    Wait Until Page Contains  Citizen Registration
    Page Should Contain Button  Register
    Click Button  Register
    Go Back

Verify Reservation
    Wait Until Page Contains  Vaccine Reservation
    Page Should Contain Button  Reserve Vaccine
    Click Button  Reserve Vaccine
    Go Back

Visit Reservation page
    Wait Until Page Contains  Vaccine Reservation
    Page Should Contain Button  Reserve Vaccine
    Click Button  Reserve Vaccine

Input Reservation Information
    Input Text  id:citizen_id  ${CITIZEN_ID}
    Select From List By Value  id:site_name  ${SITENAME}
    Select From List By Value  id:vaccine_name  ${Vaccine}
    Click Button  reserve__btn

Visit Information page
    Wait Until Page Contains  Your Information
    Page Should Contain Button  Check Info
    Click Button  Check Info

Input Citizen Information
    Input Text  id:citizen_id  ${CITIZEN_ID}
    Click Button  info__btn

Verify Vaccine Reservation Information
    Page Should Contain  ${SITE_NAME}
    Page Should Contain  ${Vaccine}

Cancel the Reservation
    Click Button  cancel__btn

*** Test Cases ***
Test verify 2 items on the home page
    Open the Browser
    Verify Registration
    Verify Reservation

Test create a reservation
    Visit Reservation page
    Input Reservation Information
    Visit Information page
    Input Citizen Information
    Verify Vaccine Reservation Information

Test cancel the reservation
    Cancel the Reservation
    [Teardown]                               Close Browser


