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
${buttonusuario}             //span[contains(.,'Usuários')]
${opennextpage1}             class=css-kab9pu
${opennextpage2}             class=css-kab9pu
${buttoneditar}              (//button[@id='edit'])[3]
${NomecompletoInput}         //input[@name='fullName']
${novoemailInput}            //input[@name='mail']
${buttonsalvarnovo}          //button[@id='save']




*** Keywords ***


Abrir navegador
    Open Browser                browser=headlesschrome
    Maximize Browser Window

#Fechar navegador
    #Close Browser

Passo 1 – acessar a página de login Qa.Coders Academy
    Go To    url=${URL}  

Passo 2 – digitar e-mail
    Wait Until Element Is Visible     locator=${emailInput}
    Input Text                        locator=${emailInput}    text=sysadmin@qacoders.com
    

Passo 3 – digitar senha 
    Wait Until Element Is Visible     locator=${passwordinput}
    Input Text                        locator=${passwordinput}    text=1234@Test
    

Passo 4 – clicar no botão entrar
    Wait Until Element Is Visible     locator=${buttonEntrar}
    Click Button                      locator=${buttonEntrar}
    

Passo 5 – clicar em cadastro
    Wait Until Element Is Visible      locator=${cadastrolink}
    Click Element                      locator=${cadastrolink}
    

Passo 6 – clicar em usuários
    Wait Until Element Is Visible      locator=${buttonusuario}
    Click Element                      locator=${buttonusuario}
        

Passo 7 – clicar em editar
    Wait Until Element Is Visible      locator=${opennextpage1}
    Click Element                      locator=${opennextpage1}
    Wait Until Element Is Visible      locator=${opennextpage2}
    Click Element                      locator=${opennextpage2}
    Wait Until Element Is Visible      locator=${buttoneditar}
    Click Element                      locator=${buttoneditar}
     

Passo 8 – cadastrar nome completo
    ${palavra_randomica}               Generate Random String          length=8    chars=[LETTERS]
    ${palavra_randomica}               Convert To Lower Case           ${palavra_randomica}
    Set Test Variable                  ${USUARIO}                      ${palavra_randomica}Marquez        
    Log                                ${USUARIO}
    Wait Until Element Is Visible      locator=${NomecompletoInput}
    Input Text                         locator=${NomecompletoInput}    text=${USUARIO} 
    

Passo 9 – cadastrar email  
    ${palavra_randomica}               Generate Random String          length=8    chars=[LETTERS]
    ${palavra_randomica}               Convert To Lower Case           ${palavra_randomica}
    Set Test Variable                  ${EMAIL_TEST}                   ${palavra_randomica}@qacoders.com.br        
    Log                                ${EMAIL_TEST}   
    Wait Until Element Is Visible    locator=${novoemailInput}
    Input Text                       locator=${novoemailInput}         text=${EMAIL_TEST} 
    

Passo 10 – clicar no botão salvar
    Wait Until Element Is Visible      locator=${buttonsalvarnovo}
    Click Button                       locator=${buttonsalvarnovo}
    