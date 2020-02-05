primeiro_acesso = PrimeiroAcesso.new

Dado("que acesse o menu do primeiro acesso") do
  primeiro_acesso.primeiro_acesso_menu
end

Dado("clico no botão aceitar termos") do
  primeiro_acesso.aceitar_termos
end

Então("valido que o botão está habilitado") do

end

Dado("informo um cpf valido") do
  primeiro_acesso.informe_cpf
end
