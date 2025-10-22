*** Settings ***
Library           SeleniumLibrary
Suite Setup       Open Demo Blaze
Suite Teardown    Close Demo
Resource          ../resources/keywords.robot
Resource          ../resources/variables.robot


*** Test Cases ***
Sign Up Test
    Sign Up User

Login Test
    Login User

Logout Test
    Logout User

Login Again Test
    Login User

Buy Product Test
    Buy Product

About Us Page Test
    About Us Page 

