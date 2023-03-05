*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/CommonFunctionality.resource
Resource    ../../Resources/PageObjects/LoginPage.resource

*** Test Cases ***
Verify login successfully
    [Setup]    CommonFunctionality.Open TracNghiemVN main page
    [Teardown]    CommonFunctionality.Finish Test
    LoginPage.Successful login action  test1@gmail.com  Test123

# Login fail cases
Verify login Fails - Blank Username and Password
    [Setup]    CommonFunctionality.Open TracNghiemVN login page
    [Teardown]    CommonFunctionality.Finish Test
    LoginPage.Invalid login action   ${EMPTY}    ${EMPTY}    Tên đăng nhập hoặc mật khẩu không đúng
Verify login Fails - Blank Username
    [Setup]    CommonFunctionality.Open TracNghiemVN login page
    [Teardown]    CommonFunctionality.Finish Test
    LoginPage.Invalid login action   ${EMPTY}    Test123     Tên đăng nhập hoặc mật khẩu không đúng
Verify login Fails - Blank Password
    [Setup]    CommonFunctionality.Open TracNghiemVN login page
    [Teardown]    CommonFunctionality.Finish Test
    LoginPage.Invalid login action   test1@gmail.com     ${EMPTY}    Tên đăng nhập hoặc mật khẩu không đúng
Verify login Fails - Wrong Username
    [Setup]    CommonFunctionality.Open TracNghiemVN login page
    [Teardown]    CommonFunctionality.Finish Test
    LoginPage.Invalid login action   test@gmail.com  Test123     Tên đăng nhập hoặc mật khẩu không đúng
Verify login Fails - Wrong Password
    [Setup]    CommonFunctionality.Open TracNghiemVN login page
    [Teardown]    CommonFunctionality.Finish Test
    LoginPage.Invalid login action   test1@gmail.com     Test12  Tên đăng nhập hoặc mật khẩu không đúng

Verify the working of login by google button
    [Setup]    CommonFunctionality.Open TracNghiemVN login page
    [Teardown]    CommonFunctionality.Finish Test
    LoginPage.Login by google

Verify the working of login by facebook button
    [Setup]    CommonFunctionality.Open TracNghiemVN login page
    [Teardown]    CommonFunctionality.Finish Test
    LoginPage.Login by facebook

Verify the working of forgot password button  #fail
    [Setup]    CommonFunctionality.Open TracNghiemVN login page
    [Teardown]    CommonFunctionality.Finish Test
    LoginPage.Forgot your password page

Verify the working of sigup now button
    [Setup]    CommonFunctionality.Open TracNghiemVN login page
    [Teardown]    CommonFunctionality.Finish Test
    LoginPage.Redirect to signup page

Verify user can return to landing page by click on the icon  #fail
    [Setup]    CommonFunctionality.Open TracNghiemVN login page
    [Teardown]    CommonFunctionality.Finish Test
    LoginPage.Redirect to landing page


