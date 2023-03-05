*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/CommonFunctionality.resource
Resource    ../../Resources/PageObjects/SearchResultPage.resource

*** Test Cases ***
Verify if user entered blank space into search bar  #fail
    [Setup]    CommonFunctionality.Open TracNghiemVN main page
    [Teardown]    CommonFunctionality.Finish Test
    SearchResultPage.Blank values result    ${EMPTY}

# Recommend the search key words that not related in any topic like game, toy, travel
Verify if user entered wrong values into search bar
    [Setup]    CommonFunctionality.Open TracNghiemVN main page
    [Teardown]    CommonFunctionality.Finish Test
    SearchResultPage.Wrong values result    game

# Find any posts that have relative keywords (operator %LIKE%)
Verify if user entered relative value into search bar
    [Setup]    CommonFunctionality.Open TracNghiemVN main page
    [Teardown]    CommonFunctionality.Finish Test
    SearchResultPage.Correct values result    Lái xe

# Find a default post
Verify if user entered default value into search bar
    [Setup]    CommonFunctionality.Open TracNghiemVN main page
    [Teardown]    CommonFunctionality.Finish Test
    SearchResultPage.Correct values result    Thi lý thuyết B2

