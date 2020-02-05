#language: pt
# encoding: UFT-8

@credencial
Funcionalidade: Validar a funcionalidade fatura digital

  @credencial_digital
  Cenario: Fluxo Credencial Digital
    Dado que realize o login
    E Acessar o menu da credencial digital
    Quando acessar a carteirinha do titular e validar os dados do titular
    Então clicar no botão de compartilhar e validar as formas de compartilhamentos
