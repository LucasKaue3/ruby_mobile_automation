credencial = Credencial.new

Quando('Acessar o menu da credencial digital') do
  credencial.menu_credencial_digital
end

E('acessar a carteirinha do titular e validar os dados do titular') do
  credencial.validar_dados_titular
end

Então('clicar no botão de compartilhar e validar as formas de compartilhamentos') do
  credencial.compartilhar_dados_titular
end
