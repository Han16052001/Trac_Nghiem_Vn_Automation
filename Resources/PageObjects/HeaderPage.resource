*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/PageObjects/LoginPage.resource

*** Variables ***

*** Keywords ***
# In case user is logged in
Logout action
    [Arguments]    ${username}  ${password}
    Redirect to login page
    Input Text    ${username_text_box_lg}  ${username}
    Input Text    ${password_text_box_lg}  ${password}
    Click Button    ${login_button_lg}
    Wait Until Element Is Visible   ${user_option_dropdown_list_hp}
    Click Element    ${user_option_dropdown_list_hp}
    Click Element    ${logout_button_hp}
    Page Should Contain Element    ${login_button_header_page_hp}

# In case user is not logged in
Redirect to login page
    Click Element   ${login_button_header_page_hp}
    Page Should Contain Element    ${login_button_lg}
