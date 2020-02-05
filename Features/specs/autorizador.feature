#language: pt
# encoding: UFT-8

@mobile
@autorizador
Funcionalidade: Autorizador

  @novo_autorizador
  Cenario: Criar nova autorização
    Dado que realize o login
    E Acessar o menu de Autorização
    Quando criar uma nova autorização
    Então validar que a autorização foi criada com sucesso
