Feature: Cadastrar-se

  Scenario: Criar cadastro com dados válidos
    Given que o usuário acessou tela de cadastro
    When o usuário insere o nome "Mailton Nascimento" no campo Nome Completo
    And o usuário insere o cpf "11111111111" no campo CPF
    And o usuário insere o ddd "92" no campo DDD
    And o usuário insere o celular "992478097" no campo Número Celular
    And o usuário insere a senha "Senha123" no campo Senha
    And o usuário insere a senha "Senha123" no campo Confirmar Senha
    And o usuário clica no botão "Cadastrar-se"
    Then o usuário é direcionado para a tela de confirmação de número

  Scenario: Criar cadastro sem o campo Nome Completo preenchido
    Given que o usuário acessou tela de cadastro
    When o usuário não preenche o campo Nome Completo
    And o usuário insere o cpf "11111111111" no campo CPF
    And o usuário insere o ddd "92" no campo DDD
    And o usuário insere o celular "992478097" no campo Número Celular
    And o usuário insere a senha "Senha123" no campo Senha
    And o usuário insere a senha "Senha123" no campo Confirmar Senha
    And o usuário clica no botão "Cadastrar-se"
    Then o usuário  não é direcionado para a tela de confirmação de número
    And é exibido mensagem "Campo obrigatório" no campo Nome Completo

  Scenario: Criar cadastro sem o campo CPF preenchido
    Given que o usuário acessou tela de cadastro
    When o usuário insere o nome "Mailton Nascimento" no campo Nome Completo
    And o usuário não preenche o campo CPF
    And o usuário insere o ddd "92" no campo DDD
    And o usuário insere o celular "992478097" no campo Número Celular
    And o usuário insere a senha "Senha123" no campo Senha
    And o usuário insere a senha "Senha123" no campo Confirmar Senha
    And o usuário clica no botão "Cadastrar-se"
    Then o usuário  não é direcionado para a tela de confirmação de número
    And é exibido mensagem "Campo obrigatório" no campo CPF

  Scenario: Criar cadastro sem o campo DDD preenchido
    Given que o usuário acessou tela de cadastro
    When o usuário insere o nome "Mailton Nascimento" no campo Nome Completo
    And o usuário insere o cpf "11111111111" no campo CPF
    And o usuário não preenche o campo DDD
    And o usuário insere o celular "992478097" no campo Número Celular
    And o usuário insere a senha "Senha123" no campo Senha
    And o usuário insere a senha "Senha123" no campo Confirmar Senha
    And o usuário clica no botão "Cadastrar-se"
    Then o usuário  não é direcionado para a tela de confirmação de número
    And é exibido mensagem "Campo obrigatório" no campo DDD

  Scenario: Criar cadastro sem o campo Número Celular preenchido
    Given que o usuário acessou tela de cadastro
    When o usuário insere o nome "Mailton Nascimento" no campo Nome Completo
    And o usuário insere o cpf "11111111111" no campo CPF
    And o usuário insere o ddd "92" no campo DDD
    And o usuário não preenche o campo Número Celular
    And o usuário insere a senha "Senha123" no campo Senha
    And o usuário insere a senha "Senha123" no campo Confirmar Senha
    And o usuário clica no botão "Cadastrar-se"
    Then o usuário  não é direcionado para a tela de confirmação de número
    And é exibido mensagem "Campo obrigatório" no campo Número Celular

  Scenario: Criar cadastro sem o campo Senha preenchido
    Given que o usuário acessou tela de cadastro
    When o usuário insere o nome "Mailton Nascimento" no campo Nome Completo
    And o usuário insere o cpf "11111111111" no campo CPF
    And o usuário insere o ddd "92" no campo DDD
    And o usuário insere o celular "992478097" no campo Número Celular
    And o usuário não preenche o campo Senha
    And o usuário insere a senha "Senha123" no campo Confirmar Senha
    And o usuário clica no botão "Cadastrar-se"
    Then o usuário  não é direcionado para a tela de confirmação de número
    And é exibido mensagem "Campo obrigatório" no campo Senha

  Scenario: Criar cadastro sem o campo Confirmar Senha preenchido
    Given que o usuário acessou tela de cadastro
    When o usuário insere o nome "Mailton Nascimento" no campo Nome Completo
    And o usuário insere o cpf "11111111111" no campo CPF
    And o usuário insere o ddd "92" no campo DDD
    And o usuário insere o celular "992478097" no campo Número Celular
    And o usuário insere a senha "Senha123" no campo Senha
    And o usuário não preenche o campo Confirmar Senha
    And o usuário clica no botão "Cadastrar-se"
    Then o usuário  não é direcionado para a tela de confirmação de número
    And é exibido mensagem "Campo obrigatório" no campo Confirmar Senha

  Scenario: Criar cadastro com Nome Completo inválido
    Given que o usuário acessou tela de cadastro
    When o usuário insere o nome "!Mailton#" no campo Nome Completo
    And o usuário insere o cpf "11111111111" no campo CPF
    And o usuário insere o ddd "92" no campo DDD
    And o usuário insere o celular "992478097" no campo Número Celular
    And o usuário insere a senha "Senha123" no campo Senha
    And o usuário insere a senha "Senha123" no campo Confirmar Senha
    And o usuário clica no botão "Cadastrar-se"
    Then o usuário  não é direcionado para a tela de confirmação de número
    And é exibido mensagem "Nome Completo com caracteres inválidos"

  Scenario: Criar cadastro com CPF inválido
    Given que o usuário acessou tela de cadastro
    When o usuário insere o nome "Mailton Nascimento" no campo Nome Completo
    And o usuário insere o cpf "1111111" no campo CPF
    And o usuário insere o ddd "92" no campo DDD
    And o usuário insere o celular "992478097" no campo Número Celular
    And o usuário insere a senha "Senha123" no campo Senha
    And o usuário insere a senha "Senha123" no campo Confirmar Senha
    And o usuário clica no botão "Cadastrar-se"
    Then o usuário  não é direcionado para a tela de confirmação de número
    And é exibido mensagem "CPF inválido"

  Scenario: Criar cadastro com DDD inválido
    Given que o usuário acessou tela de cadastro
    When o usuário insere o nome "Mailton Nascimento" no campo Nome Completo
    And o usuário insere o cpf "11111111111" no campo CPF
    And o usuário insere o ddd "XX" no campo DDD
    And o usuário insere o celular "992478097" no campo Número Celular
    And o usuário insere a senha "Senha123" no campo Senha
    And o usuário insere a senha "Senha123" no campo Confirmar Senha
    And o usuário clica no botão "Cadastrar-se"
    Then o usuário  não é direcionado para a tela de confirmação de número
    And é exibido mensagem "DDD inválido"

  Scenario: Criar cadastro com Número Celular inválido
    Given que o usuário acessou tela de cadastro
    When o usuário insere o nome "Mailton Nascimento" no campo Nome Completo
    And o usuário insere o cpf "11111111111" no campo CPF
    And o usuário insere o ddd "92" no campo DDD
    And o usuário insere o celular "9999" no campo Número Celular
    And o usuário insere a senha "Senha123" no campo Senha
    And o usuário insere a senha "Senha123" no campo Confirmar Senha
    And o usuário clica no botão "Cadastrar-se"
    Then o usuário  não é direcionado para a tela de confirmação de número
    And é exibido mensagem "Número Celular inválido"

  Scenario: Criar cadastro com Confirmar Senha diferente de Senha
    Given que o usuário acessou tela de cadastro
    When o usuário insere o nome "Mailton Nascimento" no campo Nome Completo
    And o usuário insere o cpf "11111111111" no campo CPF
    And o usuário insere o ddd "92" no campo DDD
    And o usuário insere o celular "992478097" no campo Número Celular
    And o usuário insere a senha "Senha123" no campo Senha
    And o usuário insere a senha "Senha" no campo Confirmar Senha
    And o usuário clica no botão "Cadastrar-se"
    Then o usuário  não é direcionado para a tela de confirmação de número
    And é exibido mensagem "Confirmação de senha não confere"
