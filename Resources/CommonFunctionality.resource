*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${chrome_browser}  chrome
${trac_nghiem_vn_ulr}   https://tracnghiem.vn/
${trac_nghiem_vn_login_page_ulr}    https://auth.tracnghiem.vn/auth/realms/tracnghiemvn/protocol/openid-connect/auth?client_id=web-auth-app&scope=openid%20profile%20email&response_type=code&redirect_uri=https%3A%2F%2Ftracnghiem.vn%2Fsignin-keycloak&state=CfDJ8CVEsmsgg3BJtzBf5x9wLvezaYX6oDoF5BLcA2UEduptiKwFhHLXOt_CklWCLXXxFlUYoC_Nc6jp9W-oijebSylsX3iVAPOJwa4pnjLhX6s2IspbpnD5zypjWx0aO1rore3g-qQycEWRp4k-j4DezzeQbTHUf6Q4_Z18be-uxWhFLJU0p7E6wr0LBNg6pMvh9zNrbJxTO32XGDThfhEKHZyG4JGpl1qf7LxzGqf2Ui6UuxcbyTwriKvOzdOwCISakQyDEYcA3QdlcH2Uu0WF5Qv4APk9wYLxIk3f_nSn5wmGxwApy1m1KSl3OwB7yin2HA

*** Keywords ***
Open TracNghiemVN login page
    Open Browser    ${trac_nghiem_vn_login_page_ulr}   ${chrome_browser}
    Maximize Browser Window
    Sleep    2s

Open TracNghiemVN main page
    Open Browser    ${trac_nghiem_vn_ulr}   ${chrome_browser}
    Maximize Browser Window
    Sleep    2s

Finish Test
    Close All Browsers