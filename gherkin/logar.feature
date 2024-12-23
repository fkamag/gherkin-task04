Feature: Logar

  Scenario: Logar no aplicativo com sucesso
    Given usuário acessou tela Logar
    When o usuário insere o cpf "11111111111" no campo CPF
    And o usuário insere a senha "Senha123" no campo Senha
    And o usuário clica no botão "Entrar"
    Then usuário é direcionado para a tela Home

  Scenario: Logar no aplicativo sem senha
    Given usuário acessou tela Logar
    When o usuário insere o cpf "11111111111" no campo CPF
    And o usuário não preenche o campo Senha
    Then usuário não é direcionado para a tela Home
    And é exibido mensagem "Campo obrigatório" no campo Senha

  Scenario: Logar no aplicativo sem cpf
    Given usuário acessou tela Logar
    When o usuário não preenche o campo CPF
    And o usuário insere a senha "Senha123" no campo Senha
    Then usuário não é direcionado para a tela Home
    And é exibido mensagem "Campo obrigatório" no campo CPF

  Scenario: Logar no aplicativo com cpf inválido
    Given usuário acessou tela Logar
    When o usuário insere o cpf "11111" no campo CPF
    And o usuário insere a senha "Senha123" no campo Senha
    Then usuário não é direcionado para a tela Home
    And é exibido mensagem "CPF inválido"

  Scenario: Logar no aplicativo com cpf incorreto
    Given usuário acessou tela Logar
    And o usuário tem como cpf correto "11111111111"
    And o usuário tem como senha cadastrada "Senha123"
    When o usuário insere o cpf "22222222222" no campo CPF
    And o usuário insere a senha "Senha123" no campo Senha
    Then usuário não é direcionado para a tela Home
    And é exibido mensagem "Usuário ou Senha Incorretos"

  Scenario: Logar no aplicativo com senha incorreta
    Given usuário acessou tela Logar
    And o usuário tem como cpf correto "11111111111"
    And o usuário tem como senha cadastrada "Senha123"
    When o usuário insere o cpf "11111111111" no campo CPF
    And o usuário insere a senha "senha" no campo Senha
    Then usuário não é direcionado para a tela Home
    And é exibido mensagem "Usuário ou Senha Incorretos"
