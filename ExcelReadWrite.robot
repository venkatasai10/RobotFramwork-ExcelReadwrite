*** Settings ***
Documentation    Suite description
Library           SeleniumLibrary
Library           DateTime
Library           String
Library           OperatingSystem
Library           DateTime
Library           Collections
Library           ExcelLibrary


TSN01 Fetch Prices from Data base

    Read URL and Login Credentials from Excel Sheet


Read URL and Login Credentials from Excel Sheet

    Open Excel Document       ${DataTable}    Config

    ${cConfig} =    maxrow    Config
     ${cData} =      maxrow    Data

    ${xURL}=        read excel name    A2   Config
    ${xUser}=       read excel name    B2    Config
    ${xPass}=       read excel name    C2    Config

    ${xURL2}=        read excel name    A3   Config
    ${xUser2}=       read excel name    B3    Config
    ${xPass2}=       read excel name    C3    Config



    set global variable    ${xURL}
    set global variable    ${cConfig}
    set global variable    ${xUser}
    set global variable    ${xPass}
    set global variable    ${cData}
    set global variable    ${xURL2}
    set global variable    ${xUser2}
    set global variable    ${xPass2}

    log to console    ${cData}
    log to console    ${xURL}
    log to console    ${cConfig}
    log to console    ${xUser}
    log to console    ${xPass}
    log to console    ${xURL2}
    log to console    ${xUser2}
    log to console    ${xPass2}