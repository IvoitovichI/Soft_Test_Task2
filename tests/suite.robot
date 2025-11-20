*** Settings ***
Resource  ../resources/variables.robot
Resource  ../resources/keywords.robot
Library   SeleniumLibrary
Suite Setup  Open Demo Blaze
Suite Teardown  Close Demo


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
        
Go Home Page Test
    Go Home Page

Go Cat_Laptops Test
    Go Cat_Laptops

Buy Test
    Buy 

About Us Page Test
    About Us Page 

