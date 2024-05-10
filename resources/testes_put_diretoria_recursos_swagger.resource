*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String




*** Variables ***
${URL}                       https://automacao.qacoders-academy.com.br
${emailInput}                //input[contains(@name,'email')]
${passwordinput}             //input[contains(@type,'password')]
${buttonEntrar}              //button[contains(.,'Entrar')]
${cadastrolink}              //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Cadastros')]
${buttondiretorias}          [id="Diretorias"]
${opennextpage1}             class=css-kab9pu
${buttoneditar}              (//button[@id='edit'])[28]
${NomediretoriaInput}        boardName
${buttonsalvar}              //button[@type='submit'][contains(.,'SALVAR ALTERAÇOES')]
${TIMEOUT}                   30



*** Keywords ***
Abrir navegador
    Open Browser                browser=headlesschrome
    Maximize Browser Window

Fechar navegador
    Close Browser

Passo 1 – acessar a página de login Qa.Coders Academy
    Go To    url=${URL}  

Passo 2 – digitar e-mail
    Wait Until Element Is Visible     locator=${emailInput}    timeout=${TIMEOUT}
    Input Text                        locator=${emailInput}    text=sysadmin@qacoders.com
    

Passo 3 – digitar senha 
    Wait Until Element Is Visible     locator=${passwordinput}    timeout=${TIMEOUT}
    Input Text                        locator=${passwordinput}    text=1234@Test
    

Passo 4 – clicar no botão entrar
    Wait Until Element Is Visible     locator=${buttonEntrar}    timeout=${TIMEOUT}
    Click Button                      locator=${buttonEntrar}
    

Passo 5 – clicar em cadastro
    Wait Until Element Is Visible      locator=${cadastrolink}        timeout=${TIMEOUT}
    Click Element                      locator=${cadastrolink}
    

Passo 6 – clicar em Diretorias
    Wait Until Element Is Visible      css=${buttondiretorias}    timeout=${TIMEOUT}
    Click Element                      css=${buttondiretorias}
       


Passo 7 – buscar pagina seguinte
    Wait Until Element Is Visible           locator=${opennextpage1}        timeout=${TIMEOUT}            
    Click Button                            locator=${opennextpage1}
    Wait Until Element Is Visible           locator=${opennextpage1}        timeout=${TIMEOUT}
    Click Button                            locator=${opennextpage1}
    Wait Until Element Is Visible           locator=${opennextpage1}        timeout=${TIMEOUT}            
    Click Button                            locator=${opennextpage1}
    

Passo 8 – clicar editar cadastro
    Wait Until Element Is Visible           locator=${buttoneditar}        timeout=${TIMEOUT}
    Click Button                             locator=${buttoneditar}
     


Passo 9 – escolher id
    ${palavra_randomica}        Generate Random String        length=9    chars=[LETTERS]
    ${palavra_randomica}        Convert To Lower Case         ${palavra_randomica}
    Set Test Variable           ${DIRETORIA}                  ${palavra_randomica}
    Wait Until Element Is Visible    locator=${NomediretoriaInput}            timeout=${TIMEOUT}
    Input Text                       locator=${NomediretoriaInput}            text=${DIRETORIA} 
    

Passo 10 – clicar no botão salvar  
    Wait Until Element Is Visible      locator=${buttonsalvar}     timeout=${TIMEOUT}
    Click Element                      locator=${buttonsalvar} 
