# frozen_string_literal: true

class Login
  def logar
    @driver.manage.timeouts.implicit_wait = 40
    @driver.find_element(xpath: "//android.widget.Button[@index='1']").displayed?
    @driver.find_element(xpath: "//android.widget.Button[@index='1']").click
    @driver.find_element(accessibility_id: 'Login', match: :first)
    @driver.find_element(accessibility_id: 'Login', match: :first).click
    @driver.find_element(xpath: "//android.widget.EditText[@index='0']").send_keys('peliege@omint.com.br')
    @driver.find_element(xpath: "//android.widget.EditText[@index='1']").send_keys('omint000')
    @driver.find_element(accessibility_id: 'Acessar', match: :first).click
  end

  def validar_pagina_inicial
    @driver.find_element(xpath: "//android.widget.EditText[@text='Buscar rede credenciada']")
    @driver.find_element(accessibility_id: 'Assistant')
    @driver.find_element(accessibility_id: 'Chat Omint+')
    @driver.find_element(accessibility_id: 'Bank%20Cards')
    @driver.find_element(accessibility_id: 'Bill')
    @driver.find_element(accessibility_id: 'Refund%202')
    @driver.find_element(accessibility_id: 'Approval')
  end
end
