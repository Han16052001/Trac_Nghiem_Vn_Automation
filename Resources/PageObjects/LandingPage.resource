*** Settings ***
Library    SeleniumLibrary
Variables   ../WebElements.py
Resource    ./SearchResultPage.resource
Resource    ../CommonFunctionality.resource

*** Variables ***

*** Keywords ***
Search bar action
    [Arguments]    ${search_text}
    Open TracNghiemVN main page
    Input Text  ${search_text_box}  ${search_text}
    Click Button    ${search_button}
    Page Should Contain Element    ${search_result_page_title}




