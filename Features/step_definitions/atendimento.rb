atendimento = Atendimento.new

Dado("Acessar o menu de atendimento") do
  atendimento.menu_atendimento
end

Quando("criar um novo atendimento") do
 atendimento.novo_atendimento
end

Então("validar que o atendimento foi criado com sucesso") do
  atendimento.validar_atendimento_criado
end
