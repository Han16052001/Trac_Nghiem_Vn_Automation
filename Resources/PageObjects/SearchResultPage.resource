*** Settings ***
Library    SeleniumLibrary
Variables   ../WebElements.py
Resource    ./LandingPage.resource
Resource    ../CommonFunctionality.resource

*** Variables ***

*** Keywords ***
Blank values result
    [Arguments]    ${search_text}
    LandingPage.Search bar action   ${search_text}
    Wait Until Element Is Visible    ${search_blank_result}
    Page Should Contain    ${no_result_for_search}
    CommonFunctionality.Finish Test

Wrong values result
    [Arguments]    ${search_text}
    LandingPage.Search bar action   ${search_text}
    Page Should Contain Element    ${no_result_for_search}
    CommonFunctionality.Finish Test

Correct values result
    [Arguments]    ${search_text}
    LandingPage.Search bar action   ${search_text}
    Page Should Contain     ${search_text}
    CommonFunctionality.Finish Test
