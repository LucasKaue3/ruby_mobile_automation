#language: pt
# encoding: UFT-8

@mobile
@atalhos
Funcionalidade: Validar a funcionalidade fatura digital

  @valida_todos_atalhos
  Cenario: Validar Todos os Atalhos
    Dado que realize o login
    E valide o atalho atendimento
    E valide o atalho chat
    E valide o atalho credencial
    E valide o atalho faturas
    E valide o atalho reembolsos
    E valide o atalho Autorização
