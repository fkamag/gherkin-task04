Feature: Tela Inicial

  Scenario: Tela Inicial - Botão Cadastrar-se
    Given usuário tem acesso ao aplicativo web
    When clica no botão "Cadastrar-se"
    Then usuário é direcionado à página inicial de cadastro

  Scenario: Tela Inicial - Botão Entrar
    Given que o usuário tem acesso ao aplicativo via web
    When clica no botão "Entrar"
    Then usuário é direcionado à página de entrada
