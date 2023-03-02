*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/CommonFunctionality.resource
Resource    ../../Resources/PageObjects/LoginPage.resource
Suite Teardown    CommonFunctionality.Finish Test

*** Test Cases ***
Verify login successfully
    LoginPage.Successful login action  test1@gmail.com  Test123

# Login fail cases
Verify login Fails - Blank Username and Password
    LoginPage.Invalid login action   ${EMPTY}    ${EMPTY}    Tên đăng nhập hoặc mật khẩu không đúng
Verify login Fails - Blank Username
    LoginPage.Invalid login action   ${EMPTY}    Test123     Tên đăng nhập hoặc mật khẩu không đúng
Verify login Fails - Blank Password
    LoginPage.Invalid login action   test1@gmail.com     ${EMPTY}    Tên đăng nhập hoặc mật khẩu không đúng
Verify login Fails - Wrong Username
    LoginPage.Invalid login action   test@gmail.com  Test123     Tên đăng nhập hoặc mật khẩu không đúng
Verify login Fails - Wrong Password
    LoginPage.Invalid login action   test1@gmail.com     Test12  Tên đăng nhập hoặc mật khẩu không đúng

Verify the working of login by google function
    LoginPage.Login by google

Verify the working of login by facebook function
    LoginPage.Login by facebook

Verify the working of forgot password function
    LoginPage.Forgot your password page

Verify the working of sigup now function
    LoginPage.Redirect to signup page

Verify user can return to landing page by click on the icon
    LoginPage.Redirect to landing page


