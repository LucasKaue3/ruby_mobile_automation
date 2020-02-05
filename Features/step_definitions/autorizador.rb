autorizador = Autorizador.new

Dado("Acessar o menu de Autorização") do
  autorizador.menu_autorizador
end

Quando("criar uma nova autorização") do
  autorizador.nova_autorizacao
end

Então("validar que a autorização foi criada com sucesso") do
  autorizador.validar_autorizacao_criada
end
