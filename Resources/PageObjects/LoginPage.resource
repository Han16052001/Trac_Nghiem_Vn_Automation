*** Settings ***
Library    SeleniumLibrary
Variables   ../WebElements.py
Resource    ./HeaderPage.resource

*** Variables ***

*** Keywords ***
Successful login action
    [Documentation]    This test case is simulates the login user story in successfull case
    [Tags]    Positive case
    [Arguments]    ${username}  ${password}
    HeaderPage.Redirect to login page
    Input Text    ${username_text_box_lg}  ${username}
    Input Text    ${password_text_box_lg}  ${password}
    Click Button    ${login_button_lg}
    Page Should Contain Element  ${user_option_dropdown_list_hp}
    
Invalid login action
    [Arguments]    ${username}  ${password}  ${error_text}
    [Tags]    Negative case
    [Documentation]    This test case will perform invalid login scenarios
    Input Text    ${username_text_box_lg}  ${username}
    Input Text    ${password_text_box_lg}  ${password}
    Click Button    ${login_button_lg}
    Element Should Contain  ${error_message_login_page_lg}  ${error_text}

Login by facebook
    Click Element    ${facebook_signup_button_lg}
    Page Should Contain     Log in to Facebook

Login by google
    Click Element    ${google_signup_button_lg}
    Page Should Contain     Đăng nhập bằng Google

Redirect to signup page
    Click Element    ${redirect_signup_page_lg}
    Page Should Contain Element     ${sign_up_button_sg}
    

Redirect to landing page
    Click Element   ${return_landing_page_lg}
    Page Should Contain Element     ${search_result_page_title_srp}
    

Forgot your password page
    Click Element    ${forgot_password_button_lg}
    Page Should Contain     Đặt lại mật khẩu của bạn
    