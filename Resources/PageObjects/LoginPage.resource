*** Settings ***
Library    SeleniumLibrary
Variables   ../WebElements.py
Resource    ./HeaderPage.resource
Resource    ../CommonFunctionality.resource

*** Variables ***

*** Keywords ***
Successful login action
    [Documentation]    This test case is simulates the login user story in successfull case
    [Tags]    Positive case
    [Arguments]    ${username}  ${password}
    Open TracNghiemVN main page
    HeaderPage.Redirect to login page
    Input Text    ${username_text_box}  ${username}
    Input Text    ${password_text_box}  ${password}
    Click Button    ${login_button}
    Page Should Contain Element  ${user_option_dropdown_list}
    CommonFunctionality.Finish Test
    
Invalid login action
    [Arguments]    ${username}  ${password}  ${error_text}
    [Tags]    Negative case
    [Documentation]    This test case will perform invalid login scenarios
    CommonFunctionality.Open TracNghiemVN login page
    Input Text    ${username_text_box}  ${username}
    Input Text    ${password_text_box}  ${password}
    Click Button    ${login_button}
    Element Should Contain  ${error_message_login_page}  ${error_text}
    CommonFunctionality.Finish Test

Login by facebook
    CommonFunctionality.Open TracNghiemVN login page
    Click Element    ${facebook_signup_button}
    Page Should Contain     Log in to Facebook
    CommonFunctionality.Finish Test

Login by google
    CommonFunctionality.Open TracNghiemVN login page
    Click Element    ${google_signup_button}
    Page Should Contain     Đăng nhập bằng Google
    CommonFunctionality.Finish Test

Redirect to signup page
    CommonFunctionality.Open TracNghiemVN login page
    Click Element    ${redirect_signup_page}
    Page Should Contain Element     ${sign_up_button}
    CommonFunctionality.Finish Test

Redirect to landing page
    CommonFunctionality.Open TracNghiemVN login page
    Click Element   ${return_landing_page}
    Page Should Contain Element     ${title_landing_page}
    CommonFunctionality.Finish Test

Forgot your password page
    CommonFunctionality.Open TracNghiemVN login page
    Click Element    ${forgot_password_button}
    Page Should Contain     Đặt lại mật khẩu của bạn
    CommonFunctionality.Finish Test