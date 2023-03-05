*** Settings ***
Library    SeleniumLibrary
Variables   ../WebElements.py
Resource    LoginPage.resource
Resource    HeaderPage.resource

*** Variables ***

*** Keywords ***
Input data fields action
    [Arguments]     ${first_name}   ${last_name}    ${Email}    ${username}     ${password}     ${confirm_password}
    [Documentation]    this test case is simulate the sign up action of a user
    LoginPage.Redirect to signup page
    Input Text    ${first_name_text_box_sg}     ${first_name}
    Input Text    ${last_name_text_box_sg}      ${last_name}
    Input Text    ${email_text_box_sg}  ${Email}
    Input Text    ${username_text_box_sg}  ${username}
    Input Text    ${password_text_box_sg}  ${password}
    Input Text    ${confirm_password_text_box_sg}   ${confirm_password}
    Click Button    ${sign_up_button_sg}
    Sleep    5s

Sign up successfully
    [Arguments]     ${first_name}   ${last_name}    ${Email}    ${username}     ${password}     ${confirm_password}
    Input Data Fields Action    ${first_name}   ${last_name}    ${Email}    ${username}     ${password}     ${confirm_password}
    Page Should Contain Element    ${user_option_dropdown_list_hp}

Leave blank values in all data fileds
    Input Data Fields Action    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Page Should Contain Element     ${err_mess_firstname_sg}
    Page Should Contain Element     ${err_mess_lastname_sg}
    Page Should Contain Element     ${err_mess_email_sg}
    Page Should Contain Element     ${username_text_box_lg}
    Page Should Contain Element     ${err_mess_password_sg}

Check the error message confirm password field
    [Arguments]  ${password}     ${wrong_password}
    Input data fields action    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${password}     ${wrong_password}
    Page Should Contain    Mật khẩu xác nhận không đúng

Check an email are being alrady used
    [Arguments]    ${Email}
    Input data fields action    ${EMPTY}    ${EMPTY}    ${Email}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Page Should Contain     Email này đã tồn tại

Redirect to login page
    LoginPage.Redirect to signup page
    Wait Until Element Is Visible   ${redirect_login_page_sg}
    Click Element    ${redirect_login_page_sg}
    Page Should Contain Element    ${login_button_lg}

Redirect to main page
    LoginPage.Redirect to signup page
    Click Element    ${return_landing_page_sg}
    Page Should Contain Element    ${title_landing_page_srp_lp}

