*** Settings ***
Library    SeleniumLibrary
Variables   ../WebElements.py
Resource    ../../Resources/PageObjects/LoginPage.resource
Resource    ../CommonFunctionality.resource

*** Variables ***

*** Keywords ***
# In case user is logged in
Logout action
    [Arguments]    ${username}  ${password}
    Open TracNghiemVN main page
    HeaderPage.Redirect to login page
    Input Text    ${username_text_box}  ${username}
    Input Text    ${password_text_box}  ${password}
    Click Button    ${login_button}
    Wait Until Element Is Visible   ${user_option_dropdown_list}
    Click Element    ${user_option_dropdown_list}
    Click Element    ${logout_button}
    Page Should Contain Element    ${login_button_header_page}
    CommonFunctionality.Finish Test

# In case user is not logged in
Redirect to login page
    Click Element   ${login_button_header_page}
    Page Should Contain Element    ${login_button}
