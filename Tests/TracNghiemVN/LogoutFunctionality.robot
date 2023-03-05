*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/CommonFunctionality.resource
Resource    ../../Resources/PageObjects/HeaderPage.resource

*** Test Cases ***
Verify the working of logout function
    [Setup]    CommonFunctionality.Open TracNghiemVN main page
    [Teardown]    CommonFunctionality.Finish Test
    HeaderPage.Logout action    test1@gmail.com  Test123