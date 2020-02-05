# frozen_string_literal: true

class PrimeiroAcesso
  def primeiro_acesso_menu
    @driver.manage.timeouts.implicit_wait = 40
    @driver.find_element(xpath: "//android.widget.Button[@index='1']").displayed?
    @driver.find_element(xpath: "//android.widget.Button[@index='1']").click
    @driver.find_element(accessibility_id: 'Primeiro acesso').click
  end

  def aceitar_termos
    @driver.find_element(xpath: "//android.widget.CheckBox[@index='0']").displayed?
    @driver.find_element(xpath: "//android.widget.CheckBox[@index='0']").click
    @driver.find_element(accessibility_id: 'Próximo').click
  end

  def informe_cpf
    @driver.find_element(accessibility_id: 'CPF ou Nº Credencial').displayed?
    # @driver.find_element(accessibility_id: 'CPF ou Nº Credencial').send_keys('32536248895')
  end
end
