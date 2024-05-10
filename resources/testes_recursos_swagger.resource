*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    RequestsLibrary
Library    String


*** Variables ***
${URL}                       https://automacao.qacoders-academy.com.br
${emailInput}                //input[contains(@name,'email')]
${passwordinput}             //input[contains(@type,'password')]
${buttonEntrar}              //button[contains(.,'Entrar')]
${cadastrolink}              //span[contains(.,'Cadastros')]
${buttonusuario}             //span[contains(.,'Usuários')]
${buttonnovocadastro}        //button[@class='css-fvzsut'][contains(.,'Novo Cadastro')]
${NomecompletoInput}         //input[contains(@name,'fullName')]
${novoemailInput}            //input[contains(@name,'mail')]
${perfilacessoInput}         //input[contains(@name,'accessProfile')]
${cpfInput}                  //input[contains(@name,'cpf')]
${senhaInput}                //input[contains(@name,'password')]
${confirmesenhaInput}        //input[contains(@name,'confirmPassword')]
${buttonsalvarnovo}          //button[@type='submit'][contains(.,'SALVAR NOVO')]




*** Keywords ***

Criar email em massa
    ${palavra_randomica}    Generate Random String    length=8    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable      ${EMAIL_TEST}              ${palavra_randomica}@qacoders.com.br        
    Log                    ${EMAIL_TEST} 

Criar usuario em massa
    ${palavra_randomica}    Generate Random String    length=8    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable      ${USUARIO}              ${palavra_randomica}Marquez        
    Log                    ${USUARIO}

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
        

Passo 7 – clicar em novo cadastro
    Wait Until Element Is Visible      locator=${buttonnovocadastro}
    Click Element                      locator=${buttonnovocadastro}
    

Passo 8 – cadastrar nome completo
    ${palavra_randomica}    generate random string     length=9    chars=[LETTERS]
    ${palavra_randomica}    convert to lower case      ${palavra_randomica}
    set test variable       ${NOME}                    ${palavra_randomica}
    Wait Until Element Is Visible                      locator=${NomecompletoInput}
    Input Text                                         locator=${NomecompletoInput}     text=${NOME} 
    

Passo 9 – cadastrar email
    ${palavra_randomica}    Generate Random String    length=9    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    set test variable       ${EMAIL}                  ${palavra_randomica}@narateste.com   
    Wait Until Element Is Visible                     locator=${novoemailInput}
    Input Text                                        locator=${novoemailInput}        text=${EMAIL}
    

Passo 10 – cadastrar perfil de acesso
    Wait Until Element Is Visible    locator=${perfilacessoInput}
    Input Text                       locator=${perfilacessoInput}                text=ADMIN
    

Passo 11- cadastrar cpf
    ${numero_randomico}    Generate Random String    length=11    chars=[NUMBERS]
    ${numero_randomico}    convert to lower case     ${numero_randomico}
    Set Test Variable      ${CPF}                    ${numero_randomico}
    Wait Until Element Is Visible                    locator=${cpfInput}
    Input Text                                       locator=${cpfInput}        text=${CPF}
    

Passo 12 – cadastrar senha
    Wait Until Element Is Visible    locator=${senhaInput}
    Input Text                       locator=${senhaInput}    text=1234568@Test
    


Passo 13 – confirmar senha
    Wait Until Element Is Visible    locator=${confirmesenhaInput}
    Input Text                       locator=${confirmesenhaInput}    text=1234568@Test
    


Passo 14 – clicar no botão salvar
    Wait Until Element Is Visible      locator=${buttonsalvarnovo}
    Click Element                      locator=${buttonsalvarnovo}
    



    
