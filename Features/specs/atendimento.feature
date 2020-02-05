#language: pt
# encoding: UFT-8

@mobile
@atendimento
Funcionalidade: Menu Atendimento

  @novo_atendimento
  Cenario: Criar um novo atendimento
    Dado que realize o login
    E Acessar o menu de atendimento
    Quando criar um novo atendimento
    Então validar que o atendimento foi criado com sucesso
