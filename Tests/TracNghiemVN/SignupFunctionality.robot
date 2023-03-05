*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/CommonFunctionality.resource
Resource    ../../Resources/PageObjects/SignupPage.resource

*** Test Cases ***
Verify if leave blank space on the data fields and submit login button
    [Setup]    CommonFunctionality.Open TracNghiemVN login page
    [Teardown]    CommonFunctionality.Finish Test
    SignupPage.Leave blank values in all data fileds

Verify if entered a email that has been (registered by another user/existed on database)
    [Setup]    CommonFunctionality.Open TracNghiemVN login page
    [Teardown]    CommonFunctionality.Finish Test
    SignupPage.Check an email are being alrady used     Han16052001@gmail.com

Verify if entered wrong values in confirm password filed (different from password filed)
    [Setup]    CommonFunctionality.Open TracNghiemVN login page
    [Teardown]    CommonFunctionality.Finish Test
    SignupPage.Check the error message confirm password field   anhnguyen123    anhnguyen12

Verify if user can redirect to landing page by clicking on the icon
    [Setup]    CommonFunctionality.Open TracNghiemVN login page
    [Teardown]    CommonFunctionality.Finish Test
    SignupPage.Redirect to main page

#Fails because it often occur error page after we signup, it should show some notification that inform us if we signup successed or not
#Verify that user can signup successfully if they entered correct values in all data fields
#     [Setup]    CommonFunctionality.Open TracNghiemVN login page
#     [Teardown]    CommonFunctionality.Finish Test
#     SignupPage.Sign up successfully    #input data here

# Fail because it can catch button "Đăng nhập" element
#Verify if user can redirect to login page by clicking on the login button
#    [Setup]    CommonFunctionality.Open TracNghiemVN login page
#    [Teardown]    CommonFunctionality.Finish Test
#    SignupPage.Redirect to login page
