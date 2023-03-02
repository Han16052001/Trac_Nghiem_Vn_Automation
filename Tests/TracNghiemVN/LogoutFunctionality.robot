*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/CommonFunctionality.resource
Resource    ../../Resources/PageObjects/HeaderPage.resource
Suite Teardown    CommonFunctionality.Finish Test

*** Test Cases ***
Verify the working of logout function
    HeaderPage.Logout action