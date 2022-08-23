*** Settings ***
Library    String
Library    RequestsLibrary
Library    REST
Library    Collections

*** Variables ***
${api}    http://generator.swagger.io


*** Test Cases ***
API Test 1 : GET Server
    Create Session    Get_Server    ${api}
    ${response}=  get request    Get_Server    /gen/servers
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

API Test 2 : GET Clients
    Create Session    Get_Clients    ${api}
    ${response}=  get request    Get_Clients    /gen/clients
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}