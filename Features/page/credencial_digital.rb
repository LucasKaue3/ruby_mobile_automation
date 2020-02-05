# frozen_string_literal: true

class Credencial
  def menu_credencial_digital
    @driver.find_element(accessibility_id: 'Bank%20Cards').click
  end

  def validar_dados_titular
    sleep 4
    @driver.find_element(xpath: "//android.view.View[@index='2']").click
  end

  def compartilhar_dados_titular
    @driver.find_element(xpath: "//android.view.View[@index='0']").click
    @driver.find_element(xpath: "//android.view.View[@index='2']").click
  end
end
