# frozen_string_literal: true

login = Login.new

Dado('que realize o login') do
  login.logar
end

E('validar os campos de busca estruturada e opções de atendimento, chat, credencial, faturas, reembolsos e autorizações') do
  login.validar_pagina_inicial
end
