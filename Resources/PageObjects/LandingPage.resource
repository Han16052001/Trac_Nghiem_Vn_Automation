*** Settings ***
Library    SeleniumLibrary
Variables   ../WebElements.py
Resource    ./SearchResultPage.resource

*** Variables ***

*** Keywords ***
Search bar action
    [Arguments]    ${search_text}
    Input Text  ${search_text_box_lp}  ${search_text}
    Click Button    ${search_button_lp}
    Page Should Contain Element    ${search_result_page_title_srp}




