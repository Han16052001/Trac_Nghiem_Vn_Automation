*** Settings ***
Library    SeleniumLibrary
Variables   ../WebElements.py
Resource    ./LandingPage.resource

*** Variables ***

*** Keywords ***
Blank values result
    [Arguments]    ${search_text}
    LandingPage.Search bar action   ${search_text}
    Wait Until Element Is Visible    ${search_blank_result_srp}
    Page Should Contain    ${no_result_for_search_srp}
    
Wrong values result
    [Arguments]    ${search_text}
    LandingPage.Search bar action   ${search_text}
    Page Should Contain Element    ${no_result_for_search_srp}
    
Correct values result
    [Arguments]    ${search_text}
    LandingPage.Search bar action   ${search_text}
    Page Should Contain     ${search_text}
    