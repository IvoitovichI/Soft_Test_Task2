*** Variables ***
${URL}           https://www.demoblaze.com/
${BROWSER}       chrome
${BROWSER_VERSION}    latest
${OS}            Windows
${OS_VERSION}    11
${USERNAME}      IvanVoitovich007
${PASSWORD}      Ivan007
${RUN_ON_BROWSERSTACK}   True
${BROWSERSTACK_USER}     bsuser_xpjEsM
${BROWSERSTACK_KEY}      cqqtqpbzL1MXC7vWpCPW
${PROJECT_NAME}          DemoBlazeTests
${BUILD_NAME}            DemoBlaze Build
${SESSION_NAME}          Robot Test Session
${BROWSERSTACK_CAPS}     
...    {"browserName": "${BROWSER}", 
...     "browserVersion": "${BROWSER_VERSION}",
...     "bstack:options": {
...         "os": "${OS}",
...         "osVersion": "${OS_VERSION}",
...         "projectName": "${PROJECT_NAME}",
...         "buildName": "${BUILD_NAME}",
...         "sessionName": "${SESSION_NAME}"
...     }
...    }
