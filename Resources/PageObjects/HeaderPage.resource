*** Settings ***
Library    SeleniumLibrary
Variables   ../WebElements.py
Resource    ../../Resources/PageObjects/LoginPage.resource
Resource    ../CommonFunctionality.resource

*** Variables ***

*** Keywords ***
# In case user is logged in
Logout action
    CommonFunctionality.Open TracNghiemVN main page
    LoginPage.Successful login action   test1@gmail.com  Test123
    Click Element    ${user_option_dropdown_list}
    Click Element    ${logout_button}
    Page Should Contain Element    ${login_button_header_page}
    CommonFunctionality.Finish Test

# In case user is not logged in
Redirect to login page
    Click Element   ${login_button_header_page}
    Page Should Contain Element    ${login_button}
